/// @description Insert description here
// You can write your code in this editor

draw_self();
if (cur_card_str != noone) {
	if (!surface_exists(surf)) {
		set_surf_card();
	}
	else {
		draw_surface_ext(surf, x - sprite_xoffset - (card_scale - 0.5) * 300 , y - card_dy - sprite_yoffset, card_scale, card_scale, 0, image_blend, 1);
	}
}
if (card_playing) {
	draw_sprite_part_ext(spr_card_effect, card_playing_effect_index, 0, 0, 90, 150 * (card_playing_time / card_playing_time_max), x - 90 / 2, y - 150 / 2, image_xscale, image_yscale, image_blend, image_alpha);
}
else {
	draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
if (card_select_start) {
	var draw_x = card_draw_x - draw_dx * 2 - 32;
	var draw_y = card_draw_y + draw_dy_timer * -10;
	var spr = spr_card_timer;
	draw_sprite(spr, 0, draw_x, draw_y);
	draw_sprite_part(spr, 1, 1, 1, sprite_get_width(spr) - 1, (sprite_get_height(spr) - 1) * (timer / timer_max), draw_x, draw_y);
	if (timer > 0) {
		draw_set_color(text_light);
		draw_set_font(Font3)
		draw_text(global.window_width / 2, global.window_height / 2 + 187, "'제한시간이 끝나면 선택됩니다 그전에 [ F ]로 고르세요'");
	}
	draw_set_font(font1)
}
draw_sprite_ext(spr_card_frame_light, 0, x, y, image_xscale, image_yscale, image_angle, c_white, card_light_alpha);

draw_set_color(make_color_rgb(254, 215, 100));