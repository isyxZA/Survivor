if global.GameState == "IN_GAME" {
    if mouse_check_button(global.MMOUSE) {
        dragging = true; 
		window_set_cursor(cr_cross);
    } 
	    else {
	        dragging = false; 
			window_set_cursor(cr_arrow);
	    }
    //CAMERA ZOOM CONTROL//
    //Set zoom level
    if zoom_speed != 0 {
        if can_zoom == true {
            if mouse_wheel_up() || keyboard_check_pressed(global.INCREASE) { 
                if zoom_level != 0 {
                    zoom_level -= 2;
                    if zoom_level < 0 { zoom_level = 0; }
                    var ee; 
                    if effects_level > 0 { ee =(effects_level-(zoom_level*(0.1*effects_level)))+0.05; }
                        else ee = 0;
                    var el = 0.1+(zoom_level*0.1);
                    //audio_group_set_gain(Effects, ee, 200);
                    //audio_group_set_gain(Soundscape, el, 200);
                }
            } 
            if mouse_wheel_down() || keyboard_check_pressed(global.DECREASE) { 
                if zoom_level != 10 {
                    zoom_level += 2;
                    if zoom_level > 10 { zoom_level = 10; }
                    var ee; 
                    if effects_level > 0 { ee =(effects_level-(zoom_level*(0.1*effects_level)))+0.05; }
                        else ee = 0;
                    var el = 0.1+(zoom_level*0.1);
                    //audio_group_set_gain(Effects, ee, 200);
                    //audio_group_set_gain(Soundscape, el, 200); 
                }
            }
        }
        //Set target width and height according to zoom level
        switch zoom_level {
            case 0:
			case 1:
                target_width  = 1600;
				target_ratio = 0.7;
                break;
            case 2:
			case 3:
                target_width  = 1920;
				target_ratio = 0.8;
                break;
            case 4:
			case 5:
                target_width  = 2048;
				target_ratio = 0.9;
                break;
            case 6:
			case 7:
                target_width  = 2560;
				target_ratio = 1.0;
                break;
            case 8:
			case 9:
                target_width  = 3200;
				target_ratio = 1.1;
                break
            case 10:
                target_width  = 3840;
				target_ratio = 1.2;
                break;
        }
		
        //Zoom the view to target
        if camera_get_view_width(my_camera) != target_width {
            var view_dif = (camera_get_view_width(my_camera)-target_width);
            start_view_x = camera_get_view_width(my_camera);
            start_view_y = camera_get_view_height(my_camera);
            if camera_get_view_width(my_camera) < target_width {
				camera_set_view_size(my_camera, camera_get_view_width(my_camera)-(view_dif*(zoom_speed*zspeed_adj)), camera_get_view_height(my_camera));
				camera_set_view_size(my_camera, camera_get_view_width(my_camera), camera_get_view_width(my_camera)/view_ratio);
                //Center the view
				camera_set_view_pos(my_camera, camera_get_view_x(my_camera)-(abs(camera_get_view_width(my_camera) -start_view_x)/2), 
				                               camera_get_view_y(my_camera)-(abs(camera_get_view_height(my_camera)-start_view_y)/2));
            }
                else if camera_get_view_width(my_camera) > target_width { 
					camera_set_view_size(my_camera, camera_get_view_width(my_camera)+(view_dif*-(zoom_speed*zspeed_adj)), camera_get_view_height(my_camera));
					camera_set_view_size(my_camera, camera_get_view_width(my_camera), camera_get_view_width(my_camera)/view_ratio);
                    //Center the view
					camera_set_view_pos(my_camera, camera_get_view_x(my_camera)+(abs(camera_get_view_width(my_camera) -start_view_x)/2), 
				                                   camera_get_view_y(my_camera)+(abs(camera_get_view_height(my_camera)-start_view_y)/2));
                }
			
            if moving == false { /*Activate or deactivate objects outside of view */ }
			
			cam_x = camera_get_view_x(my_camera);
			cam_y = camera_get_view_y(my_camera);
			cam_w = camera_get_view_width(my_camera);
			cam_h = camera_get_view_height(my_camera);
        }
        //Keeps the view inside the room
        camera_set_view_pos(my_camera, clamp(camera_get_view_x(my_camera), 128, room_width -(camera_get_view_width(my_camera) +128)),
									   clamp(camera_get_view_y(my_camera), 128, room_height-(camera_get_view_height(my_camera)+128)));
    }
	
	if current_ratio != target_ratio
	{
		var menu_diff = abs(current_ratio-target_ratio);
		if current_ratio < target_ratio { current_ratio += menu_diff*0.1; }
			else if current_ratio > target_ratio { current_ratio -= menu_diff*0.1; }
		oDialog.menuRatio = current_ratio;
	}
    
    if mouse_check_button_pressed(global.MMOUSE) {
        drag_x = mouse_x;
        drag_y = mouse_y;
    }
    
    //Move the viewport
    if can_pan == true {
        if (dragging == true) {
			camera_set_view_pos(my_camera, drag_x-(mouse_x-camera_get_view_x(my_camera)), drag_y-(mouse_y-camera_get_view_y(my_camera)));
            //Keeps the view inside the room
            camera_set_view_pos(my_camera, clamp(camera_get_view_x(my_camera), 128, room_width -(camera_get_view_width(my_camera) +128)),
									       clamp(camera_get_view_y(my_camera), 128, room_height-(camera_get_view_height(my_camera)+128)));
            moving = true;
        }
            else {
                if edge_pan == true {
                    if (device_mouse_x_to_gui(0) < move_border)                           { edge_pan_l = true; } else { edge_pan_l = false; } 
                    if (device_mouse_x_to_gui(0) > view_get_wport(my_view) - move_border) { edge_pan_r = true; } else { edge_pan_r = false; }
                    if (device_mouse_y_to_gui(0) < move_border)                           { edge_pan_u = true; } else { edge_pan_u = false; }
                    if (device_mouse_y_to_gui(0) > view_get_hport(my_view) - move_border) { edge_pan_d = true; } else { edge_pan_d = false; } 
                }
                    else {
                        edge_pan_l = false;
                        edge_pan_r = false;
                        edge_pan_u = false;
                        edge_pan_d = false;
                    }

	            if edge_pan_l == true { cam_move_l = true; camera_set_view_pos(my_camera, camera_get_view_x(my_camera)-(pan_speed_l), camera_get_view_y(my_camera)); } 
					else { cam_move_l = false; }
	            if edge_pan_r == true { cam_move_r = true; camera_set_view_pos(my_camera, camera_get_view_x(my_camera)+(pan_speed_r), camera_get_view_y(my_camera)); } 
					else { cam_move_r = false; }
	            if edge_pan_u == true { cam_move_u = true; camera_set_view_pos(my_camera, camera_get_view_x(my_camera), camera_get_view_y(my_camera)-(pan_speed_u)); } 
					else { cam_move_u = false; }
	            if edge_pan_d == true { cam_move_d = true; camera_set_view_pos(my_camera, camera_get_view_x(my_camera), camera_get_view_y(my_camera)+(pan_speed_d)); } 
					else { cam_move_d = false; }

                //Camera easing
                var speed_adj = -10+zoom_level;
                //LEFT
                if (cam_move_l == true) { 
                    pan_speed_l = ease_out_quint(time_l, 0, pan_speed+speed_adj, pan_duration);
                    if time_l < pan_duration { time_l ++; }
                } 
                    else { 
                        if pan_speed_l != 0 { 
                            stop_speed_l = pan_speed_l; 
                            stop_ref_l   = pan_speed_l;
                            time_ls = 0;
                        }
                        if time_ls < stop_duration {
                            stop_speed_l = ease_out_quint(time_ls, stop_ref_l, 0, stop_duration);
                            time_ls ++; 
							camera_set_view_pos(my_camera, camera_get_view_x(my_camera)-(stop_speed_l), camera_get_view_y(my_camera));
                        }
                        pan_speed_l = 0;
                        time_l = 0;
                    }
                //RIGHT
                if (cam_move_r == true) { 
                    pan_speed_r = ease_out_quint(time_r, 0, pan_speed+speed_adj, pan_duration); 
                    if time_r < pan_duration { time_r ++; }
                } 
                    else {
                        if pan_speed_r != 0 { 
                            stop_speed_r = pan_speed_r; 
                            stop_ref_r   = pan_speed_r;
                            time_rs = 0;
                        }
                        if time_rs < stop_duration {
                            stop_speed_r = ease_out_quint(time_rs, stop_ref_r, 0, stop_duration);
                            time_rs ++; 
							camera_set_view_pos(my_camera, camera_get_view_x(my_camera)+(stop_speed_r), camera_get_view_y(my_camera));
                        }
                        pan_speed_r = 0;
                        time_r = 0;
                    }
                //UP
                if (cam_move_u == true) { 
                    pan_speed_u = ease_out_quint(time_u, 0, pan_speed+speed_adj, pan_duration); 
                    if time_u < pan_duration { time_u ++; }
                } 
                    else {
                        if pan_speed_u != 0 { 
                            stop_speed_u = pan_speed_u; 
                            stop_ref_u   = pan_speed_u;
                            time_us = 0;
                        }
                        if time_us < stop_duration {
                            stop_speed_u = ease_out_quint(time_us, stop_ref_u, 0, stop_duration);
                            time_us ++; 
							camera_set_view_pos(my_camera, camera_get_view_x(my_camera), camera_get_view_y(my_camera)-(stop_speed_u));
                        }
                        pan_speed_u = 0;
                        time_u = 0;
                    }
                //DOWN
                if (cam_move_d == true) { 
                    pan_speed_d = ease_out_quint(time_d, 0, pan_speed+speed_adj, pan_duration);
                    if time_d < pan_duration { time_d ++; }
                } 
                    else {
                        if pan_speed_d != 0 { 
                            stop_speed_d = pan_speed_d; 
                            stop_ref_d   = pan_speed_d;
                            time_ds = 0;
                        }
                        if time_ds < stop_duration {
                            stop_speed_d = ease_out_quint(time_ds, stop_ref_d, 0, stop_duration);
                            time_ds ++; 
							camera_set_view_pos(my_camera, camera_get_view_x(my_camera), camera_get_view_y(my_camera)+(stop_speed_d));
                        }
                        pan_speed_d = 0;
                        time_d = 0;
                    }
                
                if (cam_move_l == true) || (cam_move_r == true) || (cam_move_u == true) || (cam_move_d == true) { moving = true; }  
                    else { if dragging == false { moving = false; } }
            }
    }
        else { moving = false; }
}

//Keeps the view inside the room
camera_set_view_pos(my_camera, clamp(camera_get_view_x(my_camera), 128, room_width -(camera_get_view_width(my_camera) +128)),
							   clamp(camera_get_view_y(my_camera), 128, room_height-(camera_get_view_height(my_camera)+128)));

//Center the camera object
x = camera_get_view_x(my_camera) + (camera_get_view_width(my_camera) *0.5);
y = camera_get_view_y(my_camera) + (camera_get_view_height(my_camera)*0.5);


if moving == true { /* Deactivate objects outside of view */ }

audio_listener_position(x, y, 0);
