if (other.cid_id.buff_index == buff_noheal) {
	DMG_no_surn(0)
}
else {
var D = 15 + ((other.cid_id.m_hp - other.cid_id.hp) * 0.16);
var sturn_time = 40;

D = dmg_cal(D, other);
if (buff_index != spr_wing1) {
	if (creper = false) {
		if (live = 1) {
			if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
				if (shild == true and shild_time < 1) {
					view_visible[1] = false;
					view_visible[0] = true;
					view_where = 0;
					obj_telescope_view.tele = false;
					immune = true;
					shild_time = 30;
					aexp += D;
					if (hp > 0) {
						hp += D;
					}
					server202_sound(sward_2_shilding);
				}
				else {
					if (no_change = false) {
						terror_charge = 0;
						cancle_able = false;
						server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
					}
					if (buff_index = buff_tele1) {
						buff_index = spr_none;
					}
					YA_changeable = false;
					if (sturn > 10) {
						sturn = sturn_time;
					}
					immune = false;
					alpha = 1;
					cli_alpha = 1;
					heal_stack += 1
					server77_equal(serve_val.alpha, 1, buffer_bool)
					obj_id = other.cid_id;
					if (obj_id.buff_index == buff_nu2) {
						hp -= 1.5 * D;
					}
					else {
						hp -= D;
					}
					s_cooltime = 1
					arm_sturncooltime = 1 
					other_cid = other.cid;
					arm_type = "ouch";
					Hit_item(D)
					server202_sound(have_hit);
				
					buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
					buffer_write(testing.buff_chat,buffer_u8,100);//100은 피해량,스턴값
					buffer_write(testing.buff_chat,buffer_u8, D);
					buffer_write(testing.buff_chat,buffer_u8, D);
					buffer_write(testing.buff_chat,buffer_u16,sturn_time);
	
					network_send_packet(0,testing.buff_chat,5);
				
					buffer_seek(testing.buff_chat, buffer_seek_start, 0);
				
					buffer_write(testing.buff_chat,buffer_u8,103);//101은 때린 사람 경험치 주기
					buffer_write(testing.buff_chat,buffer_f32,D);
					buffer_write(testing.buff_chat,buffer_u8,other_cid);
	
					network_send_packet(0,testing.buff_chat,6);
				}
			}
		}
	}
	else {
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
}