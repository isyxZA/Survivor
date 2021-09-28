draw_sprite_ext(sprite_index, 0, x, y, 1, 1, image_angle, c_white, 1);
draw_circle_color(x, y, uAttackRange, c_silver, c_silver, true);
if uCanShoot { draw_text(x, y - 40, "S"); }
if uReloading { draw_text(x, y - 40, "R"); }