draw_self();
if (!surface_exists(surf)) {
    var draw_x = 0;
    var draw_y = 0;
    surf = surface_create(180, 300);
	surface_set_target(surf);
	draw_clear_alpha(c_white, 0);
	draw_sprite(spr_sprFrame, 0, draw_x + 40, draw_y + 47);
	draw_sprite(str.spr, 0, draw_x + 40, draw_y + 47);
	draw_set_font(Font3)
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle)
	draw_set_color(c_black);
	draw_text_bold(draw_x + 92, draw_y + 187, str.name_str);
	draw_set_color(make_color_rgb(254, 215, 100));
	draw_text(draw_x + 92, draw_y + 187, str.name_str);
	draw_set_font(font1)
	draw_set_halign(fa_center);	
    draw_set_valign(fa_middle)
	draw_set_color(c_white);
    draw_text_ext(draw_x + 92, draw_y + 233, str.expl_str, 14, 120);
	if (str.disposal) { 
		draw_sprite(spr_card_frame_select, 1, draw_x + 90, draw_y + 150);
	}
    surface_reset_target();
}
if (str != noone and sprite_index != spr_card_frame_back) {
    var rot_x = xoffset * cos(degtorad(-image_angle)) - yoffset * sin(degtorad(-image_angle));
    var rot_y = xoffset * sin(degtorad(-image_angle)) + yoffset * cos(degtorad(-image_angle));
    draw_surface_ext(surf, x - rot_x * image_xscale, y - rot_y * image_yscale, image_xscale, image_yscale, image_angle, c_white, 1);
}
	
if (selected) draw_sprite_ext(spr_card_frame_select, 0, x, y, 1.5, 1.5, 0, c_white, 1);