/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(image_alpha);
draw_self();
draw_set_font(Font3);
if (!surface_exists(surf)) {
	surf = surface_create(100, 100);
	surf_made_ind(testing.cur_target, surf);
}
if (pre_cid_id_sub != noone) {
	if (!surface_exists(surf_sub)) {
		surf_sub = surface_create(100, 100);
		surf_made_ind(pre_cid_id_sub, surf_sub);
	}
	draw_sprite(spr_targeting_next, 0, x + 200, y + 100);
	draw_surface(surf_sub, x + 200, y + 50);
}
if (testing.cur_target == noone) {
	draw_sprite(spr_targeting_noone, 0, x, y);
}
else {
	draw_surface_ext(surf, x, y, 2, 2, 0, c_white, image_alpha);
}
draw_text(x + 8, y + 8, "현재 타겟 :");
draw_set_alpha(1);
draw_set_font(font1);
draw_set_color(c_white);


