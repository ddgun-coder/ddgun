alarm[1] = 20;
if (room = room_ghost) {
	if(global.hat != spr_hat37) {
		mine_say = "이 맵에는 유령모자만 사용가능합니다."
		mine_say_time = 100;
		main_big_val = 1
		with(serve) {
			scr_hat_change2(spr_hat37)
			buffer_seek(buff_chat, buffer_seek_start, 0);

			buffer_write(buff_chat,buffer_u8,95);//95는 고자동기화
			buffer_write(buff_chat,buffer_u8, global.hat_show);
			buffer_write(buff_chat,buffer_u8, 0);
   
			network_send_packet(0,buff_chat,3);
		}
	}
}
/*
if (global.hat == spr_hat37 and level > 0) {
	repeat(30) {
	var tempnum = irandom(19) + 1;

	var obj = asset_get_index("testing" + string(tempnum));
		if (obj.x > 0 and obj.y > 0) {
			if! (place_meeting(obj.x, obj.x, hurt_zone)) {
				if (obj.hp > 0) {
					x = obj.x;
					y = obj.y + irandom(35);
				}
			}
		}
	}
    if (level > 1) {
	    invisible = true;
	    invisible_time = 160;
	    }
    }