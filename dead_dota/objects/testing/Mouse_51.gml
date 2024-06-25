/// @description Insert description here
// You can write your code in this editor
if (global.hat == spr_secret) {
	if(ink > 0) {
		ink -= 2;
		buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
		buffer_write(testing.buff_chat, buffer_u8, 80);//78은 모두에게 보내기
		buffer_write(testing.buff_chat, buffer_u8, 0);
		buffer_write(testing.buff_chat, buffer_u16, obj_dot);
		buffer_write(testing.buff_chat, buffer_u16, mouse_x);
		buffer_write(testing.buff_chat, buffer_u16, mouse_y);
		buffer_write(testing.buff_chat, buffer_u8, global.team);
		buffer_write(testing.buff_chat, buffer_u8, floor(obj_show_rgb.r));
		buffer_write(testing.buff_chat, buffer_u8, floor(obj_show_rgb.g));
		buffer_write(testing.buff_chat, buffer_u8, floor(obj_show_rgb.b));
	
		network_send_packet(global.intuto, testing.buff_chat, buffer_tell(testing.buff_chat));
	}
	else {
		mine_say = "잉크가 없다";
		mine_say_time = 40;
	}
}

/*
if (keyboard_check(vk_shift)) {
server78_create_instace(obj_shack_kill, mouse_x, mouse_y)
}