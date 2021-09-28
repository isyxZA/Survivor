if fIndex != -1
{
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(fIndex, image_index, x, y, fScale, fScale, fAngle, c_white, fAlpha);
	gpu_set_blendmode(bm_normal);
}