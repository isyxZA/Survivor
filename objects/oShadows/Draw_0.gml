with oCollider
{
	switch uType
	{
		case PLAYER:
			draw_sprite_ext(sPlayerHighlight, 0, x, y, 1, 1, image_angle, c_white, 0.2);
			break;
		case F_RIFLEMAN:
			if isSelected { draw_sprite_ext(sFriendlyHighlight, 0, x, y, 1, 1, image_angle, c_white, 0.2); }
			break;
		case E_RIFLEMAN:
			if isSelected { draw_sprite_ext(sFoeHighlight, 0, x, y, 1, 1, image_angle, c_white, 0.2); }
			break;
	}
	draw_sprite_ext(sprite_index, image_index, x-2, y+3, 1.1, 1.1, image_angle, c_black, 0.8);
}
