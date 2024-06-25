/// @description Insert description here
// You can write your code in this editor
if (other.sturn <= 0 and other.counter <= 0) {
	other.hp -= 1;
	other.sturn = 40;
	other.counter = 10;
	buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
	buffer_write(testing.buff_chat,buffer_u8,100);//100은 피해량,스턴값
	buffer_write(testing.buff_chat,buffer_u8, 0);
	buffer_write(testing.buff_chat,buffer_u8, 1);
	buffer_write(testing.buff_chat,buffer_u16,40);
								
	
	network_send_packet(0,testing.buff_chat,5);
}
