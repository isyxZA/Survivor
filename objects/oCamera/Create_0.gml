my_view = 0; 
view_camera[my_view] = camera_create_view((room_width * 0.5) - (oGUI.guiWidth * 0.5), (room_height * 0.5) - (oGUI.guiHeight * 0.5), 
											1920, 1080, 0, oPlayer, -1, -1, 256, 256);
											
//view_camera[my_view] = camera_create_view((room_width * 0.5) - (oGUI.guiWidth * 0.5), (room_height * 0.5) - (oGUI.guiHeight * 0.5), 
											//1920, 1080)//, 0, oPlayer, -1, -1, 256, 256);
my_camera = view_camera[my_view];
view_set_visible(my_view, true);

can_pan = true;
edge_pan = true;
pan_speed = 30;
pan_duration = room_speed;
can_zoom = true;
zoom_level = 5;
zoom_speed = 2;
zspeed_adj = 0.025;
stop_duration = 10;
cam_move_l = false;
cam_move_r = false;
cam_move_u = false;
cam_move_d = false;
edge_pan_l = false;
edge_pan_r = false;
edge_pan_u = false;
edge_pan_d = false;
pan_speed_l = 0;
pan_speed_r = 0;
pan_speed_u = 0;
pan_speed_d = 0;
stop_speed_l = 0;
stop_speed_r = 0;
stop_speed_u = 0;
stop_speed_d = 0;
stop_ref_l = 0;
stop_ref_r = 0;
stop_ref_u = 0;
stop_ref_d = 0;
time_l = 0;
time_r = 0;
time_u = 0;
time_d  = 0;
time_ls = stop_duration;
time_rs = stop_duration;
time_us = stop_duration;
time_ds = stop_duration;
move_border = 8;
dragging = false;
drag_x = mouse_x;
drag_y = mouse_y;

view_ratio = 1.777777777777778;//1080p
current_ratio = 0;
target_ratio = 0;
target_width  = camera_get_view_width(my_camera);
start_view_x  = camera_get_view_x(my_camera);
start_view_y  = camera_get_view_y(my_camera);

cam_x = start_view_x;
cam_y = start_view_y;
cam_w = target_width;
cam_h = target_width/view_ratio;

//Center the camera object
x = start_view_x + (camera_get_view_width(my_camera)  * 0.5);
y = start_view_y + (camera_get_view_height(my_camera) * 0.5);

moving = false;

effects_level = 1;
audio_listener_orientation(0, 1, 0, 0, 0, 1);