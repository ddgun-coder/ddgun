testing.other_cid = 0;
if(testing.creper == false) {
	if(testing.immune == false) {
		if (testing.shild == true and testing.shild_time < 1) {
			testing.immune = true;
			testing.shild_time = 10;
			testing.aexp += 10;
			testing.hp += 10 / 4;
			server202_sound(sward_2_shilding);
		}
		else {
			if (testing.buff_index == buff_tele1) {
				testing.buff_index = spr_none;
			}
			var D = 0;
			if (keyboard_check(ord("K"))) {
				D = 55;
			}
			else {
				D = 0.1;
			}
			with (testing) {
				if (protection) {
					if (protection_val > D) {
						protection_val -= D;
						D = 0;
					}
					else {
						server78_create_instace(obj_barrier, x, y);
						protection_val = 0;
						D -= protection_val;
						protect_break = true;
						protect_break_time = 300;
						protection = false;
					}
				}
				if (armor > D) {
					armor -= D;
					D = 0;
				}
				else {
					D -= armor;	
				}
				hp -= D;
			}
			testing.sturn = 10;
			testing.m_sturn = 10;
			testing.heal_stack += 1
			testing.heal_stack_time = 80
			testing.arm_type = "ouch"
			with(testing) {
				if (no_change = false) {
				terror_charge = 0;
				server77_equal(serve_val.sturn, sturn, buffer_u8)
				cancle_able = false;
				server77_equal(serve_val.cancle_able, cancle_able, buffer_bool)
			}
			audio_play_sound(have_hit, 0, false);
		}
	}
}
}
else {
	with(testing) {
		set_creper_arm_hat();
	}
}