/// @description Insert description here
// You can write your code in this editor
draw_set_font(font1);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(make_color_rgb(32, 23, 79));
draw_text_bold(x, y, what);
draw_set_color(make_color_rgb(136, 255, 127));
draw_text(x, y, what);
draw_set_font(font1);

if (obj_keycon.main = true) {
	draw_set_font(font2);
	draw_set_color(make_color_rgb(32, 23, 79));
    draw_text_bold(x, y- 15, ch_expl);
    draw_set_color(make_color_rgb(219, 223, 234));
    draw_text(x, y - 15, ch_expl);
}