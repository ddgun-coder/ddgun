aexp += 100;
prt_val_add(Val.mp, 20);
prt_val_add(0, 200);

instance_destroy(other.id);

var string1;

switch(irandom(1)) {
	case 0:
		string1 = "아 내가 받았다.";
	break;
	case 1:
		string1 = "시계 받았습니다.";
	break;
}

buffer_seek(buff_chat, buffer_seek_start, 0);
	
buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
buffer_write(buff_chat,buffer_string, "아 내가 받았다.");
buffer_write(buff_chat,buffer_string,global.name);
	
network_send_packet(0,buff_chat,buffer_tell(buff_chat));