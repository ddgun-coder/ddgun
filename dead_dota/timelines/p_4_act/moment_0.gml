arm_all_normal();
a_cooltime = 25;
arm_type = "attack";
server202_sound(p_3_sound);
var buff_area = buffer_create(1,buffer_grow,1);
	buffer_seek(buff_area, buffer_seek_start, 0);
	
	buffer_write(buff_area,buffer_u8,4);//3은 피해량,스턴값
	buffer_write(buff_area,buffer_u8, 0);//3은 피해량,스턴값
	
	network_send_packet(0,buff_area,buffer_tell(buff_area));
	
	buffer_delete(buff_area);
server78_create_instace(obj_p4, x, y);