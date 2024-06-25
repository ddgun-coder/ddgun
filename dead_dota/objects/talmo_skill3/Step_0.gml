/// @description Insert description here
// You can write your code in this editor
if (cid_id == global.my_cid_id) {
	testing.color = c_black;
	server77_equal(serve_val.color, c_black, buffer_f32);
	with(testing) {
		if (testing.a_cooltime <= 0) {
			if (keyboard_check_released(global.keyd)) {
				if (testing.mana >= 5) {
						a_cooltime = 40;
						prt_val_add(Val.mp, -5);
						server78_create_instace(talmo_skill_mint ,x , y);
					}
					else {
					testing.skill_say_time = 30;
					testing.skill_say = "MP: " + string(testing.mana) + " / 5(5)";
				}
			}
			if (keyboard_check_released(global.keyq)) {
				if (testing.mana >= 5) {
						a_cooltime = 60;
						prt_val_add(Val.mp, -5);
						server78_create_instace(talmo_skill_red ,x , y);
					}
					else {
					testing.skill_say_time = 30;
					testing.skill_say = "MP: " + string(testing.mana) + " / 5(5)";
				}
			}
		}
	}
}

