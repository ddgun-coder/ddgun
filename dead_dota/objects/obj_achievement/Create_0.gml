/// @description Insert description here
// You can write your code in this editor
achievement_array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
size = array_length(achievement_array);
surf = -1;
layer_height = 0;
draw_height = 310;
limit_height = size * 88 - draw_height;
function ui_surf_set() {
	if (!surface_exists(surf)) {
		surf = surface_create(256, size * 88);
	}
	surface_set_target(surf);
	var _y, real_ind, str, draw_x, draw_y, _string;
	for (var i = 0; i < size; i++) {
		_y = i * 88;
		draw_x = 10;
		draw_y = _y + 10;
		real_ind = achievement_array[i];
		str = global.achievement[real_ind];
		switch(str.comple) {
			case -1:
				draw_sprite(spr_achi_base, 0, 0, _y);
				draw_sprite(spr_achievement_no_data, 0, draw_x, draw_y);
				break;	
			case 0:
				draw_sprite(spr_achi_base, 0, 0, _y);
				draw_sprite(spr_achievement_lock, 0, draw_x, draw_y);
				break;	
			case 1:
				draw_sprite(spr_achi_base_comple, 0, 0, _y);
				draw_sprite(str.spr, str.spr_index, draw_x, draw_y);
				break;
		}
		if (str.comple) {
			_string = str.name;
		}
		else {
			_string = string_repeat("?", string_length(str.name));
		}
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_text_bold_color(draw_x + 160, draw_y, _string, c_black, c_white);
		draw_set_halign(fa_left);
		draw_text_bold_color(draw_x + 70, draw_y + 30, str.desc, c_black, c_white);
	}
	surface_reset_target();
}

function draw_achie() {
	var num = array_length(achievement_array);
	var str;
	var real_ind;
	var draw_x, draw_y;
	var n;
	for (var i = 0; i < 4; i++) {
		for (var j = 0; j < width_num; j++) {
			n = i * width_num + j;	
			if (num <= n) return;
			real_ind = achievement_array[n];
			str = global.achievement[real_ind];
			draw_x = x + j * 64 + x_offset;
			draw_y =  y + i * 64 + y_offset;
			switch (str.comple) {
				case -1:
					draw_sprite(spr_achievement_no_data, 0, draw_x, draw_y);
					break;	
				case 0:
					draw_sprite(spr_achievement_lock, 0, draw_x, draw_y);
					break;	
				case 1:
					draw_sprite(str.spr, str.spr_index, draw_x, draw_y);
					break;	
			}
		}
	}
}

function get_achi_number() {
	if (global.get_data == false) return - 1;
	var _number = 0;
	for (var i = 0; i < global.achievement_num; i++) {
		if (global.achievement[i].comple) {
			_number++;
		}
	}
	return _number;
}


