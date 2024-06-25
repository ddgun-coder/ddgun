function random_level5() {
	main_big_val = 1;
	go_to_scale = 1;
	if (global.hat != spr_hat5) {
		var what = irandom(16);
		switch(what) {
			case 0:
				scr_hat_change2(spr_level5_hat1);
				audio_stop_all();
				BMG_play();
			break;
			case 1:
				main_big_val = 2.5;
				go_to_scale = 2.5;
				scr_hat_change2(spr_level5_hat2);
			break;
			case 2:
				scr_hat_change2(spr_level5_hat3);
			break;
			case 3:
				scr_hat_change2(spr_level5_hat4);
			break;
			case 4:
				scr_hat_change2(spr_level5_hat5);
			break;
			case 5:
				scr_hat_change2(spr_level5_hat6);
			break;
			case 6:
				scr_hat_change2(spr_level5_hat7);
			break;
			case 7:
				scr_hat_change2(spr_ehat4);
			break;
			case 8:
				scr_hat_change2(spr_level5_hat8);
			break;
			case 9:
				scr_hat_change2(spr_level5_hat9);
			break;
			case 10:
				scr_hat_change2(spr_level5_hat10);
			break;
			case 11:
				scr_hat_change2(spr_level5_hat11);
			break;
			case 12:
				scr_hat_change2(spr_level5_hat12);
			break;
			case 13:
				scr_hat_change2(spr_level5_hat14);
			break;
			case 14:
				scr_hat_change2(spr_level5_hat15);
			break;
			case 15:
				scr_hat_change2(spr_level5_hat17);
			break;
			default:
				scr_hat_change2(spr_level5_hat18);
			break;
		}
	}
	buff_index = spr_wing1;
	buff_time = 400;
	level = 4;

	buffer_seek(buff_chat, buffer_seek_start, 0);
	
	buffer_write(buff_chat,buffer_u8,95);//95는 고자동기화
	buffer_write(buff_chat,buffer_u8, global.hat_show);
	buffer_write(buff_chat,buffer_u8, level);
	
	network_send_packet(0,buff_chat, 3);


}
