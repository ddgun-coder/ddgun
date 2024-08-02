if (!windows) exit;
var x_gap = 21;
var dx = 120 - x_gap;
var dy = 51;
var _drawx = x + dx;
var _drawy = y + dy;
var _hat_draw_x = 6;
var _hat_draw_y = 21;

var _spr = (ui_type == 1) ? spr_ui_skill_background1 : spr_ui_skill_background2;
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_sprite(_spr, 0, x, y)
draw_set_color(c_black);
draw_sprite(spr_skill_ui_type, attack_type, _drawx, _drawy);
var _xoffset = sprite_get_xoffset(global.hat);
var _yoffset = sprite_get_yoffset(global.hat);
draw_sprite_part(global.hat, 0, _xoffset - 32, _yoffset - 32, 64, 64, x + _hat_draw_x, y + _hat_draw_y);
//sprite part
var _name = "";
var _explain = "";
var _skill = "";
if (Dskill_is_array) {
	_name = Dskill_array[Dskill_index].name;
	_explain = Dskill_array[Dskill_index].explain;
	_skill = Dskill_array[Dskill_index].skill;
	if (Dskill_index - 1 >= 0){ 
		draw_sprite(spr_ui_skill_arrow, 0, _drawx - arrow_xoffset, _drawy + arrow_yoffset);
	}
	else if (Dskill_index < Dskill_array_num - 1) {
		draw_sprite(spr_ui_skill_arrow, 1, _drawx + arrow_xoffset + sprite_get_width(spr_skill_ui_type), _drawy + arrow_yoffset);	
	}
	
}
else {
	_name = Dname;
	_explain = Dexplain;
	_skill = Dskill;
}
	draw_set_font(Font3)
	draw_text_bold_color(_drawx + 60, _drawy + 38, _name, c_black, make_color_rgb(219, 223, 234));
	draw_set_color(make_color_rgb(254, 215, 100));
	draw_set_font(font1)
	draw_text_ext(_drawx + 60, _drawy + 80, _explain, 16, 270);
	draw_set_color(c_white);
	draw_text(_drawx + 60, _drawy + 110, _skill);
//text part
for (var i = 0; i < 4; i++) {
	if (show_level == i) {
		draw_set_alpha(1);
	}
	else {
		draw_set_alpha(0.6);	
	}
	draw_sprite(spr_ui_skill_level, i, x + level_draw_x, y + level_draw_y + 32 * i);	
}
draw_set_alpha(1);

if (ui_type == 1) {
	_drawy += 285;
	draw_sprite(spr_skill_ui_type, attack_type1, _drawx, _drawy);
	draw_set_font(Font3)
	draw_set_color(c_black);
	draw_text_bold_color(_drawx + 60, _drawy + 38, Qname, c_black, make_color_rgb(219, 223, 234));
	draw_set_color(make_color_rgb(254, 215, 100));
	draw_set_font(font1)
	draw_text_ext(_drawx + 60, _drawy + 80, Qexplain, 16, 270);
	draw_set_color(c_white);
	draw_set_font(font1)
	draw_text(_drawx + 60, _drawy + 110, Qskill);
}
