buffer_seek(buff_chat, buffer_seek_start, 0);

var up = 0;
switch(global.team)
	{
		case 0:
			up = 1;
		break;
		case 1:
			up = 0;
		break;
		default:
			up = irandom(1);
		break;
	}
					
buffer_write(buff_chat,buffer_u8,199)
buffer_write(buff_chat,buffer_bool,up);//팀점수 업
	
network_send_packet(0,buff_chat,buffer_tell(buff_chat));