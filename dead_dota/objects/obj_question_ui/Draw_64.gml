/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_alpha(image_alpha);
draw_sprite(spr_babo_question_bar, 0, x, y + 2);
draw_sprite_part(spr_babo_question_bar, 1, 0, 0, 256 * (alarm[0] / question_time_max), 32, x, y + 2);
draw_set_font(font_number);
draw_set_halign(fa_left);
draw_text(x, y + 20, oper_str + "= ?");
var _color = c_white;
var _gap = 64;
switch(question_result) {
	case QR.none :
	case noone :
		for (var i = 0; i < 4; i++) {
			draw_sprite(spr_babo_arrow, i, x + _gap * i + 5, y + 40);
			draw_text_bold_color(x + _gap * i + 32, y + 40 + 20, answer_array[i], c_black, c_white);
			if (x_array[i]) {
				draw_sprite_ext(spr_x, 0, x + _gap * i + 5 + 16, y + 40 + 16,  1 / (question_time[i] + 0.1),  1 / (question_time[i] + 0.1), 0, c_white, image_alpha * question_time[i]);	
			}
		}
		break;
	case QR.correct :
		for (var i = 0; i < 4; i++) {
			if (i == answer_index) {
				_color = c_green;
			}
			else {
				_color = c_red;
			}
			draw_sprite_ext(spr_babo_arrow, i, x + _gap * i + 5, y + 40, 1, 1, 0, _color, image_alpha);
			draw_text_bold_color(x + _gap * i + 32, y + 40 + 20, answer_array[i], _color, c_white);
		}
		break;
	case QR.not_correct :
		for (var i = 0; i < 4; i++) {
			if (i == answer_index) {
				_color = c_green;
			}
			else if (i == your_choice) {
				_color = c_yellow;
			}
			else {
				_color = c_black;
			}
			draw_sprite_ext(spr_babo_arrow, i, x + _gap * i + 5, y + 40, 1, 1, 0, _color, image_alpha);
			draw_text_bold_color(x + _gap * i + 32, y + 40 + 20, answer_array[i], _color, c_white);
		}
		break;
}
draw_set_alpha(1);
draw_set_font(font1);





