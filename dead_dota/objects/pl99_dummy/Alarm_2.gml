/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4CFAA61A
/// @DnDArgument : "code" "alarm_set(3,charging);$(13_10)fire_charging = 1;$(13_10)right_arm_yscale *= -1;$(13_10)arm_movement(0, 0, 0, 10)$(13_10)var buff_area = buffer_create(1,buffer_grow,1);$(13_10)	buffer_seek(buff_area, buffer_seek_start, 0);$(13_10)	$(13_10)	buffer_write(buff_area,buffer_u8,7)//7은 4차스킬$(13_10)	buffer_write(buff_area,buffer_u8,global.team);$(13_10)	buffer_write(buff_area,buffer_u8,charging);$(13_10)	$(13_10)	network_send_packet(0,buff_area,buffer_tell(buff_area));$(13_10)	$(13_10)	buffer_delete(buff_area);"
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