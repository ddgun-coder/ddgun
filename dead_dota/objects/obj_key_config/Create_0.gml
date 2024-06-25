/// @description Insert description here
// You can write your code in this editor
keyboard_array = global.keyboard_array;

str_array = ["공격", "대쉬", "1차 스킬", "2차 스킬", "3차 스킬", "4차 스킬", "5차 스킬",
"레이싱 모드", "방향 고정 모드", "상호작용", "위쪽", "아래쪽", "왼쪽", "오른쪽", "감정표현1", "감정표현2", "감정표현3", "감정표현4" ];
activate_index = noone;
depth = -5000
surf = -1;
var num = array_length(keyboard_array);
surf_h = (sprite_height + 11) * num;
surf_offset = 0;
show_height = 350;
x_offset = 95;
dupl_array = [];

wheel_speed = 10;

function check_duplication() {
	var hash = ds_map_create();
	var num = array_length(keyboard_array);
	var val, return_array = [];
	for (var i = 0; i < num; i++) {
		val = variable_global_get(keyboard_array[i]);
		if (ds_map_exists(hash, val)) {
			if (array_length(return_array) == 0) {
				array_push(return_array, hash[? val]);
			}
			else {
				var check_dupu = false;
				for (var j = 0; j < array_length(return_array); j++) {
					if (return_array[j] == i) {
						check_dupu = true;
						break;
					}
				}
				if (!check_dupu) {
					array_push(return_array, hash[? val]);
				}
			}
			array_push(return_array, i);
		}
		else {
			ds_map_add(hash, val, i);
		}
	}
	ds_map_destroy(hash);
	return return_array;
}

function save_key() {
	var num = array_length(keyboard_array);
	ini_open("key_config.ini");
	for (var i = 0; i < num; i++) {
		ini_write_real("key_config", keyboard_array[i], variable_global_get(keyboard_array[i]))
	}
	ini_close();
}

function set_surf() {
	var num = array_length(keyboard_array);
	var num_j = array_length(dupl_array);
	var sub = 0;
	var val, check;
	if (!surface_exists(surf)) {
		surf = surface_create(sprite_width * 2, (sprite_height + 11) * num);
	}
	surface_set_target(surf);
	for (var i = 0; i < num; i++) {
		val = variable_global_get(keyboard_array[i]);
		draw_set_halign(fa_right);
		draw_set_valign(fa_middle);
		var _draw_y = (sprite_height + 11) * i;
		sub = false;
		for (var j = 0; j < num_j; j++) {
			if (dupl_array[j] == i) {
				sub = true;
				break;
			}
		}
		draw_sprite(sprite_index, sub, x_offset + 5, _draw_y);
		if (activate_index == i) {
			sub = 1;
		}
		else {
			sub = 0;
		}
		draw_sprite(spr_key_config_arrow_ui, sub, x_offset + 5, _draw_y);
		draw_text_bold_color(x_offset - 5, _draw_y + 8, str_array[i], c_white, c_black);
		draw_set_halign(fa_center);
		var out = false;
		var show_str = scr_map(variable_global_get(keyboard_array[i]));
		draw_text_bold_color(x_offset + sprite_width / 2, _draw_y + 8, show_str, c_red, c_white);
	}
	surface_reset_target();
}











