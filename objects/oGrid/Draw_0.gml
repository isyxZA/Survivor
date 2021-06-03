//draw_sprite_stretched(sGround, 0, 0, 0, room_width, room_height);

if showGrid 
{ 
	draw_set_alpha(0.5);
	mp_grid_draw(global.NavGrid); 
	draw_set_alpha(1);
}