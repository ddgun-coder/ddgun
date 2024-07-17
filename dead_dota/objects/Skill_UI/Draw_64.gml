if (!windows) exit;
var x_gap = 21;
var dx = 120 - x_gap;
var dy = 51;
var _drawx = x - x_gap;
var _drawy = y;
var _spr = (ui_type == 1) ? spr_ui_skill_background1 : spr_ui_skill_background2;
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_sprite(_spr, 0, x, y)
draw_set_color(c_black);
draw_sprite(spr_skill_ui_type, attack_type, x + dx, y + dy)
draw_set_font(Font3)
draw_text_bold(_drawx + 180, _drawy + 95, Dname );
draw_set_color(make_color_rgb(219, 223, 234));
draw_text(_drawx + 180, _drawy + 95, Dname );
draw_set_color(make_color_rgb(254, 215, 100));
draw_set_font(font1)
draw_text_ext(_drawx + 180, _drawy + 160, Dexplain, 16, 270);
draw_set_color(c_white);
draw_set_font(font1)
draw_text(_drawx + 180, _drawy + 190, Dskill);

if (ui_type == 1) {
	draw_sprite(spr_skill_ui_type, attack_type1, x + dx, y + dy + 285)
	draw_set_font(Font3)
	draw_set_color(c_black);
	draw_text_bold(_drawx + 180 , _drawy + 380, Qname );
	draw_set_color(make_color_rgb(219, 223, 234));
	draw_text(_drawx + 180 , _drawy + 380, Qname );
	draw_set_color(make_color_rgb(254, 215, 100));
	draw_set_font(font1)
	draw_text_ext(_drawx + 180, _drawy + 450, Qexplain, 16, 270);
	draw_set_color(c_white);
	draw_set_font(font1)
	draw_text(_drawx + 180, _drawy + 480, Qskill);
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);