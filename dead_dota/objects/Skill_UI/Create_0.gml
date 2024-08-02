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

Dskill_is_array = false;
Dskill_index = 0;
Dskill_array_num = 0;
Dskill_array = [];
Qskill_is_array = false;
Qskill_index = 0;
Qskill_array_num = 0;
Qskill_array = [];

cur_hat = noone;

arrow_xoffset = sprite_get_xoffset(spr_ui_skill_arrow);
arrow_yoffset = sprite_get_height(spr_skill_ui_type) / 2;

function switch_window() {
	windows = !windows;	
	set_skill_variables();
}

function set_skill_variables() {
	var _my_level;
	if (instance_exists(testing)) {
		_my_level = testing.level;
	}
	else {
		_my_level = 0;	
	}
	var _ind = real(string_digits(sprite_get_name(global.hat)));
	var out = true;
	if (_ind == -1) return;
	if (array_length(global.skill_exp) > _ind) {
		if (is_array(global.skill_exp[_ind])) {
			if (array_length(global.skill_exp[_ind]) > show_level) {
				out = false;
			}
		}
	}	
	if (out) return;
	cur_hat = global.hat;
	
	var _const = global.skill_exp[_ind][show_level];
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