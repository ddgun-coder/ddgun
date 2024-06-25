a_cooltime = 40;
var xx;
var yy;
while(true) {
	xx = irandom(room_width - 100) + 50;
	yy = irandom(room_height - 100) + 50;
	if(place_free(xx,yy)) {
		if (!place_meeting(xx, yy, only_first)){
			break;
		}
	}
}
server78_create_instace(gman_skill1,xx, yy);
buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "가나다라마바사.");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(global.intuto,buff_chat,buffer_tell(buff_chat));