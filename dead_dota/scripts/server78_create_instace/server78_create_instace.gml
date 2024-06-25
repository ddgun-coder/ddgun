function server78_create_instace(argument0, argument1, argument2) {
	if (room == room_tuto) {
		if (object_index == tuto_dummy_move) {
			var ida = instance_create_depth(argument1, argument2, -100, argument0);
	        ida.team = -1;
	        ida.cid = ai_index;
	        ida.cid_id = ai_index_to;
	        ida.image_angle = YA;
			if (ida.sprite_index == spr_attack_mask1 or ida.sprite_index == spr_attack_mask3) {
	            if (global.show_hitbox == true) {
	                ida.visible = true;   
	            }
	        }
	        if (instance_exists(see_skill31)) {
	            ida.visible = false;   
	        }
			return;
		}
		else {
			var ida = instance_create_depth(argument1, argument2, -100, argument0);
	        ida.team = global.team;
	        ida.cid = 0;
	        ida.cid_id = global.cid_array[cid];
	        ida.image_angle = ida.cid_id.YA;
			if (ida.sprite_index == spr_attack_mask1 or ida.sprite_index == spr_attack_mask3) {
	            if (global.show_hitbox == true) {
	                ida.visible = true;   
	            }
	        }
	        if (instance_exists(see_skill31)) {
	            ida.visible = false;   
	        }	
			return;
		}
	}
	if (!global.only_see) {
		var name = argument0;//obj스킬 변수값
		var skill_x = argument1;// x좌표
		var skill_y = argument2;// y좌표 
		buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
		buffer_write(testing.buff_chat, buffer_u8, 78);//78은 모두에게 보내기
		buffer_write(testing.buff_chat, buffer_u8, 0);
		buffer_write(testing.buff_chat, buffer_u16, name);
		buffer_write(testing.buff_chat, buffer_u16, skill_x);
		buffer_write(testing.buff_chat, buffer_u16, skill_y);
		buffer_write(testing.buff_chat, buffer_u8, global.team);
	
		network_send_packet(global.intuto, testing.buff_chat, buffer_tell(testing.buff_chat));
	}
}

function server78_create_instace_angle(argument0, argument1, argument2) {
	if (room == room_tuto) {
		var ida = instance_create_depth(argument1, argument2, -100, argument0);
        ida.team = global.team;
        ida.cid = 0;
        ida.cid_id = global.cid_array[cid];
        ida.image_angle = 0;
		if (ida.sprite_index == spr_attack_mask1 or ida.sprite_index == spr_attack_mask3) {
            if (global.show_hitbox == true) {
                ida.visible = true;   
            }
        }
        if (instance_exists(see_skill31)) {
            ida.visible = false;   
        }	
		return;
	}
	if (!global.only_see) {
		var name = argument0;//obj스킬 변수값
		var skill_x = argument1;// x좌표
		var skill_y = argument2;// y좌표 
		buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
		buffer_write(testing.buff_chat, buffer_u8, 78);//78은 모두에게 보내기
		buffer_write(testing.buff_chat, buffer_u8, 0);
		buffer_write(testing.buff_chat, buffer_u16, name);
		buffer_write(testing.buff_chat, buffer_u16, skill_x);
		buffer_write(testing.buff_chat, buffer_u16, skill_y);
		buffer_write(testing.buff_chat, buffer_u8, global.team);
	
		network_send_packet(global.intuto, testing.buff_chat, buffer_tell(testing.buff_chat));
	}
}

