alarm_set(3,charging);
fire_charging = 1;
right_arm_yscale *= -1;
arm_movement(0, 0, 0, 10)
var buff_area = buffer_create(1,buffer_grow,1);
	buffer_seek(buff_area, buffer_seek_start, 0);
	
	buffer_write(buff_area,buffer_u8,7)//7은 4차스킬
	buffer_write(buff_area,buffer_u8,global.team);
	buffer_write(buff_area,buffer_u8,charging);
	
	network_send_packet(0,buff_area,buffer_tell(buff_area));
	
	buffer_delete(buff_area);