if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
	if (arm_type_more != "a_w") {
	    if (buff_index != spr_none) {
		buff_index = spr_none;
		buff_time = 1;
		server77_equal(serve_val.buff_index, spr_none, buffer_u16);
		DMG_hpteal(15, n_attack_area, 40);
		other_cid = 0;
	 }
	 else {
         DMG_no_surn(0)
     }  
  }
}
/*var D = 4
var name = n_attack_area;
var sturn_time = 40
if (global.only_see == false) {
	if (arm_type_more != "a_w") { 
		view_visible[1] = false;
		view_visible[0] = true;
		obj_telescope_view.tele = false;
		if (live = 1) {
			if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
				if (sturn <= 0 and immune == false) {
					if (buff_index != spr_none) {
						YA_changeable = false;
						sturn = sturn_time;
						hp -= 4;
						immune = true;
						invisible = false;
						counter = 10;
						alpha = 1;
						buff_index = spr_none;
						buff_time = 240;
						extra_speed -= 2;
						server77_equal(serve_val.buff_index, buff_index, buffer_u16);
						cli_alpha = 1;
						server77_equal(serve_val.alpha, 1, buffer_bool)
						if (other.cid_id.buff_index == buff_nu2) {
							buffer_write(buff_chat,buffer_u8, 2 * D);
						}
						s_cooltime = 1
						arm_sturncooltime = 1 
						other_cid = other.cid;
						arm_type = "ouch";
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
			}
		}
	}
}