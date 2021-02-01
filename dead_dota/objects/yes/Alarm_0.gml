/// @description Insert description here
// You can write your code in this editor
with(testing) {
	buffer_seek(buff_chat, buffer_seek_start, 0);
	
	buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
	buffer_write(buff_chat,buffer_string, "동의합니다! 우리는 프렌드 리스펙트를 해야합니다!");
	buffer_write(buff_chat,buffer_string,global.name);
	
	network_send_packet(0,buff_chat,buffer_tell(buff_chat));
}
instance_destroy();