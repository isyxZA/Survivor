if fIndex != -1
{
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(fIndex, image_index, x, y, 1, 1, fAngle, c_white, 1);
	gpu_set_blendmode(bm_normal);
}