if (timeline_index == spear_3_act) {
	if (a_possible = false) {
						if (mana >= 0) {
							if(a_a_cooltime < 0) {
								prt_val_add(Val.mp, -24);
								a_a_cooltime = 40;
								terror_charge = 11
								server78_create_instace(spear_skill1, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90));
							}
						}
						else {
							skill_say_time = 30;
							skill_say = "MP: " + string(mana) + " / "  + "24(0)";
						}
					}
}


if (sturn <= 0) {
if (timeline_index == ma_1_act) {
	if (go_to_scale < 2.4) {
	     go_to_scale += 0.02
		 prt_val_add(Val.mp, -0.6);
		 big_val_time = 40
	}
	if (go_to_scale >= 2.6) {
	    go_to_scale = 2.4
		big_val_time = 40
	}
		
}
}

	