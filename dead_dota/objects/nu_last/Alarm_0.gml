be_inv = true;

buffer_seek(testing.buff_area, buffer_seek_start, 0);
	
buffer_write(testing.buff_area,buffer_u8,47);
	
network_send_packet(0,testing.buff_area, 48);