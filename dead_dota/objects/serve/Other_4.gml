/// @description Insert description here
// You can write your code in this editor
if (get_another_skill) {
	get_another_skill = false;
	full_loaded = true;
	case111_type = 4;
	buffer_seek(buff_chat, buffer_seek_start, 0);
					
	buffer_write(buff_chat,buffer_u8,111)//111 is only start 
	buffer_write(buff_chat,buffer_u8,case111_type)//111 is only start 
				
	network_send_packet(0,buff_chat,buffer_tell(buff_chat));
}