var out = false;
for(var i = 1; i < 24; i++) {
	var obj = global.cid_array[i];
	if (obj.team != global.team) {
		if (obj.x > 0 and obj.y > 0) {
			if (obj.buff_index == buff_nin4) {
				if (mana >= 100) {
					x = obj.x + lengthdir_x(35 * big_val, YA - 90);
					y = obj.y + lengthdir_y(35 * big_val, YA - 90);
					YA = point_direction(x, y, obj.x, obj.y);
					arm_all_normal();
					all_spin = 1;
					temp_YA = YA;
					spr_armr_more = spr_musa_1_skill;
					right_arm_YA = YA;
					left_arm_YA = YA - 90;
					effect_index = effect_musa11;
					all_spin_limit = 360;
					server78_create_instace(nin_skill41, x + lengthdir_x(35, YA - 90), y + lengthdir_y(35, YA - 90));
					a_cooltime = 21;
					arm_type = "attack"
				}
				else {
					skill_say_time = 30;
					skill_say = "MP: " + string(mana) + " / 100(100)";
				}
				out = true;
			}
		}
	}
}
if (out == false) {
	if (gi >= 100) {
		a_cooltime = 20;
		prt_val_add(Val.gi, -100);
		arm_type = "attack";
		arm_type_more = "go 90";
		server78_create_instace(nin_skill4, x + lengthdir_x(35 * big_val, YA - 90), y + lengthdir_y(35 * big_val, YA - 90));
	}
	else {
		skill_say_time = 30;
		skill_say = "GI: " + string(gi) + " / 100(100)";
	}
}