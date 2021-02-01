a_cooltime = 20;
if (up_skill < 3) {
	up_skill++;
	server78_create_instace(tu_skill21 + up_skill - 1, x + lengthdir_x(55 * big_val, YA - 90), y + lengthdir_y(55 * big_val, YA - 90));
}
else {
	up_skill = 0;
	server78_create_instace(tu_skill24, x + lengthdir_x(55 * big_val, YA - 90), y + lengthdir_y(55 * big_val, YA - 90));
	buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
	buffer_write(testing.buff_chat,buffer_u8,100);//100은 피해량,스턴값
	buffer_write(testing.buff_chat,buffer_u8, 0);
	buffer_write(testing.buff_chat,buffer_u8, 0);
	buffer_write(testing.buff_chat,buffer_u16, 200);
	
	network_send_packet(global.intuto,testing.buff_chat,5);
	sturn = 200;
}