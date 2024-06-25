with(testing) {
	random_level5();
	var buff_area = buffer_create(1,buffer_grow,1);
					buffer_seek(buff_area, buffer_seek_start, 0);
	
					buffer_write(buff_area,buffer_u8,200)//200은 레벨업!소리와 표시
					buffer_write(buff_area,buffer_u8, 0);
	
	network_send_packet(0,buff_area,buffer_tell(buff_area));
		
	buffer_delete(buff_area);
	buff_area = buffer_create(1,buffer_grow,1);
					buffer_seek(buff_area, buffer_seek_start, 0);
	
					buffer_write(buff_area,buffer_u8,201)//201은 실질적인 값증가.
					buffer_write(buff_area,buffer_u8,level);
	
	network_send_packet(0,buff_area,buffer_tell(buff_area));
	
	buffer_delete(buff_area);
}