/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 618EB178
/// @DnDArgument : "code" "if (distance_to_object(testing) < 10)$(13_10){$(13_10)	testing.mine_say = "뭔가 숨겨진 포탈이 있는거 같다.(f)"$(13_10)	testing.mine_say_time = 100;$(13_10)	if (keyboard_check(ord("f")) or keyboard_check(ord("F"))) {$(13_10)		if (global.online = 1)$(13_10)		{$(13_10)			buffer_seek(buff_area, buffer_seek_start, 0);$(13_10)	$(13_10)			switch(global.team)$(13_10)				{$(13_10)					case 0:$(13_10)						var up = 1;$(13_10)					break;$(13_10)					case 1:$(13_10)						var up = 0;$(13_10)					break;$(13_10)				}$(13_10)					$(13_10)			buffer_write(buff_area,buffer_u8,199)$(13_10)			buffer_write(buff_area,buffer_bool,up);//팀점수 업$(13_10)	$(13_10)			network_send_packet(0,buff_area,buffer_tell(buff_area));$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			room_goto(room_main_offline);$(13_10)		}$(13_10)	}$(13_10)}"
if (distance_to_object(testing) < 10)
{
	testing.mine_say = "뭔가 숨겨진 포탈이 있는거 같다.(f)"
	testing.mine_say_time = 100;
	if (keyboard_check(ord("f")) or keyboard_check(ord("F"))) {
		if (global.online = 1)
		{
			buffer_seek(buff_area, buffer_seek_start, 0);
	
			switch(global.team)
				{
					case 0:
						var up = 1;
					break;
					case 1:
						var up = 0;
					break;
				}
					
			buffer_write(buff_area,buffer_u8,199)
			buffer_write(buff_area,buffer_bool,up);//팀점수 업
	
			network_send_packet(0,buff_area,buffer_tell(buff_area));
		}
		else
		{
			room_goto(room_main_offline);
		}
	}
}