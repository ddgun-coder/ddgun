if(team == global.team) {
	buffer_seek(testing.buff_chat, buffer_seek_start, 0);
				
	buffer_write(testing.buff_chat,buffer_u8,101);//101은 때린 사람 경험치 주기
	buffer_write(testing.buff_chat,buffer_f32,testing.sturn / 5);
	buffer_write(testing.buff_chat,buffer_u8,cid);
	
	network_send_packet(0,testing.buff_chat,6);
	testing.hp += 10;
	testing.sturn = 0;
	
	buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
	buffer_write(testing.buff_chat,buffer_u8,100);//100은 피해량,스턴값
	buffer_write(testing.buff_chat,buffer_u8, 0);
	buffer_write(testing.buff_chat,buffer_u8, 0);
	buffer_write(testing.buff_chat,buffer_u16, 0);
	
	network_send_packet(0,testing.buff_chat,5);
}
instance_destroy();