/// @description Insert description here
// You can write your code in this editor
image_angle = direction;
if (distance_to_object(testing) < 100) {
	image_blend = c_white;
	buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
	buffer_write(testing.buff_chat,buffer_u8,203);//95는 고자동기화
	
	network_send_packet(0,testing.buff_chat,1);
}
else {
	image_blend = c_red;
}