var D = 200
var name = hunt_skill4
var sturn_time = 200

view_visible[1] = false;
view_visible[0] = true;
obj_telescope_view.tele = false;
if (live = 1) {
	if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
		if (immune == false) {
			sturn = sturn_time;
			immune = false;
			invisible = false;
			alpha = 1;
			cli_alpha = 1;
			bloodable = true;
			cur_attack = other.cid;
			server77_equal(serve_val.alpha, 1, buffer_bool)
			if (other.cid_id.buff_index == buff_nu2) {
				hp -= 2 * D;
			}
			else {
				hp -= D;
			}
			s_cooltime = 1
			arm_sturncooltime = 1 
			other_cid = other.cid;
			arm_type = "ouch";
			server202_sound(have_hit);

				buffer_seek(buff_chat, buffer_seek_start, 0);
	
				buffer_write(buff_chat,buffer_u8,100);//100은 피해량,스턴값
				buffer_write(buff_chat,buffer_u8, D);
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
				
				other_cid = 0;
		}
	}
}