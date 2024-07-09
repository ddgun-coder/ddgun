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


function set_skill_variables() {
	var _ind = array_get_index(global.hat_array, global.hat);
	var out = true;
	if (array_length(global.skill_exp) > _ind) {
		if (is_array(global.skill_exp[_ind])) {
			if (array_length(global.skill_exp[_ind]) > show_level) {
				out = false;
			}
		}
	}	
	if (out) return;
	
	var _const = global.skill_exp[_ind][show_level];
	ui_type = _const.ui_type;
	attack_type = _const.attack_type;
	Dname = _const.Dname;
	Dexplain = _const.Dexplain;
	Dskill = _const.Dskill;
	if (ui_type == 1) {
		Qname= _const.Qname;
		Qexplain= _const.Qexplain;
		Qskill= _const.Qskill;
	}
}