function DMG_no_surn(argument0) {
	var D = argument0;
	D = dmg_cal(D, other);
	if (live = 1) {
		if (buff_index != spr_wing1) {
			if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
				if (immune == false) {
					if (sturn <= 0) {
							other_cid = other.cid;
							buffer_seek(buff_chat, buffer_seek_start, 0);
	
							buffer_write(buff_chat,buffer_u8,100);//100은 피해량,스턴값
							buffer_write(buff_chat,buffer_u8,0);
							buffer_write(buff_chat,buffer_u8,D);
							buffer_write(buff_chat,buffer_u16,0);
	
							network_send_packet(0,buff_chat,5);
							obj_id = other.cid_id;
							hp -= D;
							if (just_time > 0) {
								buffer_seek(buff_chat, buffer_seek_start, 0);
						
								buffer_write(buff_chat,buffer_u8,101);//101은 때린 사람 경험치 주기
								buffer_write(buff_chat,buffer_f32,D);
								buffer_write(buff_chat,buffer_u8,other_cid);
	
								network_send_packet(0,buff_chat,6);
							}
							cur_attack = other.cid;
							other_cid = 0;
					}
				}
			}
		}
	}
}
function DMG_no_surn_hide(D,aexp) {
	D = dmg_cal(D, other);
	if (live = 1) {
		if (buff_index != spr_wing1) {
			if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
				if (immune == false) {
					if (sturn <= 0) {
							other_cid = other.cid;
							buffer_seek(buff_chat, buffer_seek_start, 0);
	
							buffer_write(buff_chat,buffer_u8,100);//100은 피해량,스턴값
							buffer_write(buff_chat,buffer_u8,0);
							buffer_write(buff_chat,buffer_u8,D);
							buffer_write(buff_chat,buffer_u16,0);
	
							network_send_packet(0,buff_chat,5);
							obj_id = other.cid_id;
							hp -= D;
							if (just_time > 0) {
								buffer_seek(buff_chat, buffer_seek_start, 0);
						
								buffer_write(buff_chat,buffer_u8,101);//101은 때린 사람 경험치 주기
								buffer_write(buff_chat,buffer_f32,aexp);
								buffer_write(buff_chat,buffer_u8,other_cid);
	
								network_send_packet(0,buff_chat,6);
							}
							cur_attack = other.cid;
							other_cid = 0;
					}
				}
			}
		}
	}
}