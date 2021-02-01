var D = 2
var name = n_attack_area;
var sturn_time = 10

view_visible[1] = false;
view_visible[0] = true;
obj_telescope_view.tele = false;
if (live = 1) {
	if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
		if (sturn <= 0 and immune == false and buff_index != spr_wing1) {
			hp -= 2;
			sturn = sturn_time;
			immune = true;
			only_hat = false;
			server77_equal(serve_val.only_hat, only_hat, buffer_bool);
			hat_scale = 1;
			all_spin = 0;
			go_to_speed = 0;
			YA_changeable = false;
			jumping = false;
			a_charging = 0;
			arm_all_normal();
			left_arm_YA = YA + 270;
			right_arm_YA = YA + 90;
			invisible = false;
			alpha = 1;
			arm_type = "ouch";
			cli_alpha = 1;
			server77_equal(serve_val.alpha, 1, buffer_bool)
			if (other.cid_id.buff_index == buff_nu2) {
				buffer_write(buff_chat,buffer_u8, 2 * D);
			}
			s_cooltime = 1
			arm_sturncooltime = 1 
			other_cid = other.cid;
			server202_sound(have_hit);
				buffer_seek(buff_chat, buffer_seek_start, 0);
	
				buffer_write(buff_chat,buffer_u8,100);//100은 피해량,스턴값
				buffer_write(buff_chat,buffer_u8, 0);
				if (other.cid_id.buff_index == buff_nu2) {
					buffer_write(buff_chat,buffer_u8, 2 * D);
				}
				else {
					buffer_write(buff_chat,buffer_u8, D);
				}
				buffer_write(buff_chat,buffer_u16,sturn_time);
	
				network_send_packet(0,buff_chat,buffer_tell(buff_chat));

				buffer_seek(buff_chat, buffer_seek_start, 0);
				
				buffer_write(buff_chat,buffer_u8,101);//101은 때린 사람 경험치 주기
				buffer_write(buff_chat,buffer_f32,D);
				buffer_write(buff_chat,buffer_u8,other_cid);
	
				network_send_packet(0,buff_chat,buffer_tell(buff_chat));
		}
	}
	else {
		if (hp < 5) {
			hp = 5;
		}
		if (other.cid_id != global.my_cid_id) {
			buff_index = buff_tele;
			tele_try = 3;
			buff_time = 1;
			buffer_seek(buff_chat, buffer_seek_start, 0);
				
			buffer_write(buff_chat,buffer_u8,101);//101은 때린 사람 경험치 주기
			buffer_write(buff_chat,buffer_f32,10);
			buffer_write(buff_chat,buffer_u8,other_cid);
	
			network_send_packet(0,buff_chat,buffer_tell(buff_chat));
		}
		server77_equal(serve_val.buff_index, buff_index, buffer_u16);
	}
}
other_cid = 0;