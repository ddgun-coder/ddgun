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
			testing.hp -= 0.1
			testing.sturn = 10;
			testing.m_sturn = 10;
			testing.arm_type = "ouch"
			with(testing) {
				server77_equal(serve_val.sturn, sturn, buffer_u8)
				cancle_able = false;
				server77_equal(serve_val.cancle_able, cancle_able, buffer_bool)
			}
			audio_play_sound(have_hit, 0, false)
		}
	}
}
else {
	with(testing) {
	server78_create_instace(mine_skill3, x, y);
		sturn = 240;
		creper = false;
		creper_die = 240;
		footL_x = x + irandom_range(-50, 50);
		footR_x = x + irandom_range(-50, 50);
		footL_y = y + irandom_range(-50, 50);
		footR_y = y + irandom_range(-50, 50);
		armL_x = x + irandom_range(-50, 50);
		armR_x = x + irandom_range(-50, 50);
		armL_y = y + irandom_range(-50, 50);
		armR_y = y + irandom_range(-50, 50);
		right_arm_YA = irandom(360);
		left_arm_YA = irandom(360);
		right_foot_YA = irandom(360);
		left_foot_YA = irandom(360);
		hat_xscale = 0;
		hat_yscale = 0;
		server77_equal(serve_val.hat_yscale, hat_yscale, buffer_s8);
		server77_equal(serve_val.hat_xscale, hat_xscale, buffer_s8);
		level = 0;
		server77_equal(serve_val.hat_frame, level, buffer_u8);
		buffer_seek(buff_chat, buffer_seek_start, 0);
	
		buffer_write(buff_chat,buffer_u8,95);//95는 고자동기화
		buffer_write(buff_chat,buffer_u8, global.hat_show);
		buffer_write(buff_chat,buffer_u8, level);
	
		network_send_packet(0,buff_chat,3);
	}
}