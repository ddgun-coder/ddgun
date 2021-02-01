only_hat = true;
all_spin_limit = 0;
var where = 0;
if (global.hat == spr_hat31 and level == 3) {
	switch(global.chat) {
		case "돌다리":
			where = ROOM.rock_britge;
		break;
		case "꽃동산":
			where = ROOM.sky;
		break;
		case "개미굴":
			where = ROOM.ant;
		break;
		case "저녁숲":
			where = ROOM.forest;
		break;
		case "기숙사":
			where = ROOM.study;
		break;
		case "레이싱":
			where = ROOM.racing;
		break;
		case "묘방성":
			where = ROOM.mu;
		break;
		case "검투장":
			where = ROOM.sward;
		break;
		case "하수도":
			where = ROOM.under;
		break;
		case "대병원":
			where = ROOM.hos;
		break;
		case "데스헬":
			where = ROOM.hell;
		break;
		case "아레나":
			where = ROOM.arena;
		break;
		case "드레곤":
			where = ROOM.drangon;
		break;
		case "축구장":
			where = ROOM.soccer;
		break;
		case "돌다리2":
			where = ROOM.ball;
		break;
		case "수영장2" :
			where = ROOM.sea;
		break;
		case "nm":
			where = ROOM.last;
		break;
		default :
			while(true) {
				where = irandom(ROOM.last - 1)
				if (where != serve.cur_room) {
					break;
				}
			}
		break;
	}
}
else {
	while(true) {
		where = irandom(ROOM.last - 1)
		if (where != serve.cur_room) {
			break;
		}
	}
}
if (serve.num_client >= 8) {
	if (where == ROOM.ball) {
		while(true) {
			where = irandom(ROOM.last - 1)
			if (where != serve.cur_room and where != ROOM.ball) {
				break;
			}
		}
	}
}
server77_equal(serve_val.only_hat, only_hat, buffer_bool);
buffer_seek(buff_chat, buffer_seek_start, 0);
			
buffer_write(buff_chat, buffer_u8, 205);
buffer_write(buff_chat, buffer_u8, where);

network_send_packet(0,buff_chat,buffer_tell(buff_chat));