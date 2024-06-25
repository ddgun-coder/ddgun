function normal_play(argument0) {
	if (!global.only_see) {
		var name = argument0
		counter = 2;
		view_where = 0;
		timeline_index = name;
		timeline_position = 0;
		timeline_running = 1;
		timeline_loop = false;
		a_possible = true;
		jumping = false;
		image_angle = YA;
		with (obj_crown) {
			if (cid_id == global.my_cid_id and activate) {
				server78_create_instace(obj_crown_beam, x, y);
			}
		}
		if (nu_on == true) {
			nu_on = false;
			if (go_to_scale < 1) {
				go_to_scale = main_big_val;
			}
			big_val = 1;
			face_variable = 0;
			if (no_change == false) {
				terror_charge = 0;
				server77_equal(serve_val.terror_charge, 0, buffer_u8);
			}
			server77_equal(serve_val.face_variable, 0, buffer_u8);
			server202_sound(nu_3_sound_cancle);

			buffer_seek(buff_fast, buffer_seek_start, 0);
	
			buffer_write(buff_fast,buffer_u8,50);//50은 핵폭발관리;
			buffer_write(buff_fast,buffer_u8,2);
	
			network_send_packet(0,buff_fast,buffer_tell(buff_fast));
		}
	}
}
