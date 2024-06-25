/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(image_alpha);
draw_self();
draw_set_font(Font3);
if (!surface_exists(surf)) {
	surf = surface_create(100, 100);
	surf_made_ind(cid_id, surf);
}
draw_surface_ext(surf, x, y, 2, 2, 0, c_white, image_alpha);
var draw_x = x + 220;
draw_sprite(spr_cutscene_frame2, 0, x + 215, y);
draw_text_bold_color(draw_x + 30, y + 55, cid_id.name, c_red, c_yellow);
draw_set_color(c_white);
draw_text(draw_x + 30, y + 70, text);
draw_set_alpha(1);
draw_set_font(font2);









