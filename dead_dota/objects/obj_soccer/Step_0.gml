dis = distance_to_point(goto_x, goto_y);
dir = point_direction(x, y, goto_x, goto_y);
x += lengthdir_x(dis / 4, dir);
y += lengthdir_y(dis / 4, dir);
image_angle += 1;
if (instance_exists(serve)) {
	if (serve.kazino_time < 0) {
		var soc_dis = point_distance(testing.x, testing.y, goto_x, goto_y);
		if (soc_dis < 64) {
			dir = testing.YA - 90;
			out = false;
			for (var i = 0; i < 10; i++) {
				temp_x = max(min(lengthdir_x((20 - i * 2) * (64 -soc_dis), dir), 200), -200);
				temp_y = max(min(lengthdir_y((20  - i * 2) * (64 -soc_dis), dir), 200), -200);
				if (place_free(goto_x + temp_x, goto_y + temp_y) and goto_x + temp_x > 0 and goto_y + temp_y > 0) {
					goto_x += temp_x;
					goto_y += temp_y;
					break;
				}					
			}
			with(testing) {
				buffer_seek(buff_chat, buffer_seek_start, 0);
				buffer_write(buff_chat,buffer_u8, 10);
				buffer_write(buff_chat,buffer_u16, obj_soccer.goto_x);//3은 피해량,스턴값
				buffer_write(buff_chat,buffer_u16, obj_soccer.goto_y);
	
				network_send_packet(0,buff_chat,buffer_tell(buff_chat));
			}
		}
	}
}