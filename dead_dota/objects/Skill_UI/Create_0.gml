if (room == room_main) {
    persistent = false;
}
windows = false;
Dname = "";
Dexplain = "";
Dskill = "";
Qname= "";
Qexplain= "";
Qskill= "";
Wname= "";
Wexplain = "";
Wskill= "";
Ename= "";
Eexplain = "";
Eskill = "";
Pname= "";
Pexplain = "";
Pskill = "";
image_alpha = 0.9;
show_level = 0;
ui_type = 0;
attack_type1 = 0;
attack_type = 0;
level_draw_x = 5;
level_draw_y = 92;
changer_draw_x = 500;
changer_draw_y = 92;

is_level5 = false;
Dskill_is_array = false;
Dskill_index = 0;
Dskill_array_num = 0;
Dskill_array = [];
Qskill_is_array = false;
Qskill_index = 0;
Qskill_array_num = 0;
Qskill_array = [];

cur_hat = noone;

ui_change = 0;
ui_changer_type = noone;
ui_changer_spr = noone;

arrow_xoffset = sprite_get_xoffset(spr_ui_skill_arrow);
arrow_yoffset = sprite_get_height(spr_skill_ui_type) / 2;
sprite_string = "";
array = [];

function switch_window() {
	windows = !windows;	
	switch (global.hat) {
		case spr_hat64 : 
			var _skill_detect = noone;
			with (testing) {
				_skill_detect = q_attack_type;
			}
			if (_skill_detect == spr_sangbrush) {
				ui_change = 0;
			}
			else {
				ui_change = 1;
			}
			break;
		case spr_hat77 : 
			var _skill_detect = noone;
			with (testing) {
				_skill_detect = babo_change;
			}
			if (_skill_detect) {
				ui_change = 1;
			}
			else {
				ui_change = 0;
			}
			break;
		default : 
			ui_change = 0;
			break;
	}
	set_skill_variables();
}

function array_setter() {
	is_level5 = false;
	show_level = min(show_level, 3);
	ui_changer_type = noone;
	ui_changer_spr = noone;

	switch (global.hat) {
		case spr_hat64 :
			ui_changer_type = 0;
			array = global.skill_sang[ui_change];
			ui_changer_spr = spr_ui_skill_changer;
			return false;
		case spr_hat77 :
			array = global.skill_babo[ui_change];
			ui_changer_type = 1;
			return false;
	}
	array = global.skill_exp;
	var _ind = real(string_digits(sprite_string));
	if (_ind == -1) return;
	if (array_length(array) > _ind) {
		if (is_array(array[_ind])) {
			if (array_length(array[_ind]) > show_level) {
				array = array[_ind]
				return false;
			}
		}
	}	
	return true;
}

function set_skill_variables() {
	var _my_level;
	if (instance_exists(testing)) {
		_my_level = testing.level;
	}
	else {
		_my_level = 0;
	}
			
	var out = true;
	sprite_string = sprite_get_name(global.hat);
	if (string_pos("spr_level", sprite_string) != 0) {
		is_level5 = true;
		array = global.skill_exp_level5;
		sprite_string = string_replace(sprite_string, "spr_level5_hat", "");
		var _ind = real(string_digits(sprite_string));
		if (_ind == -1) return;
		if (array_length(array) > _ind) {
			if (is_array(array[_ind])) {
				if (array_length(array[_ind]) > show_level) {
					array = array[_ind]
					out = false;
				}
			}
		}
		//spr_leveln형태의 모자
	}
	else if (_my_level == 4) {
		switch (global.hat) {
			case spr_ehat4 :
			
			break;
			case spr_hat1 :
				array = global.pluton_exp;
			break;
			case spr_hat5 :
				array = global.pluton_exp;
			break;
		}
		is_level5 = true;
		//99pluton 같은 형태
	}
	else {
		out = array_setter();
		//1~4레벨 일반 모자
	}
	if (out) {
		array = global.skill_noone;
		return;
	}
	cur_hat = global.hat;
	
	var _const = array[show_level];
	ui_type = _const.ui_type;
	attack_type = _const.attack_type;
	
	var _Dconst = _const.Dskill;
	var _skill_const;
	if (is_array(_Dconst)) {
		Dskill_is_array = true;
		Dskill_array_num = array_length(_Dconst);
		Dskill_index = 0;
		Dskill_array = _Dconst;
		for (var i = 0; i < Dskill_array_num; i++) {
			_skill_const = _Dconst[i];
			if (_my_level >=_skill_const.level) {
				Dskill_index = i;
			}
			else {
				break;	
			}
		}
	}
	else {
		Dskill_is_array = false;
		Dname = _const.Dskill.name;
		Dexplain = _const.Dskill.explain;
		Dskill = _const.Dskill.skill;
	}
	if (ui_type == 1) {
		attack_type1 = _const.attack_type1;
		var _Qconst = _const.Qskill;
		if (is_array(_Qconst)) {
			Qskill_is_array = true;
			Qskill_array_num = array_length(_Qconst);
			Qskill_index = 0;
			Qskill_array = _Qconst;
			for (var i = 0; i < Qskill_array_num; i++) {
				_skill_const = _Qconst[i];
				if (_my_level >=_skill_const.level) {
					Qskill_index = i;
				}
				else {
					break;	
				}
			}
		}
		else {
			Qskill_is_array = false;
			Qname= _const.Qskill.name;
			Qexplain= _const.Qskill.explain;
			Qskill= _const.Qskill.skill;		
		}
	}
}