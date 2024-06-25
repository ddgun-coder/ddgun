norm_attack();
server202_sound(gili_4_sound);
buffer_seek(buff_chat, buffer_seek_start, 0);
switch(irandom(2)) {
	case 0:
		prt_val_add(0, 1500);

		buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
		buffer_write(buff_chat,buffer_string, "빌게이츠... 복수할거다! (은행이 털렸습니다.)");
		buffer_write(buff_chat,buffer_string,global.name);
	break;
	case 1:
		switch(global.team)
		{
			case 0:
				var up = 1;
			break;
			case 1:
				var up = 0;
			break;
			default:
				var up = irandom(1);
			break;
		}
		buffer_write(buff_chat,buffer_u8,9)//9는 해킹
		buffer_write(buff_chat,buffer_bool, up);
	
		network_send_packet(0,buff_chat,buffer_tell(buff_chat));
		
		buffer_seek(buff_chat, buffer_seek_start, 0);
		buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
		buffer_write(buff_chat,buffer_string, "빌게이츠... 복수할거다! (점수판이 털렸습니다.)");
		buffer_write(buff_chat,buffer_string,global.name);
	break;
	case 2:
		server78_create_instace(gili_skill41, x, y);
		buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
		buffer_write(buff_chat,buffer_string, "빌게이츠... 복수할거다! (버프가 털렸습니다.)");
		buffer_write(buff_chat,buffer_string,global.name);
	break;
}
network_send_packet(0,buff_chat,buffer_tell(buff_chat));