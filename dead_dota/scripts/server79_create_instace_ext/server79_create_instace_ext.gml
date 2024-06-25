function server_switch(_val, addition, ida) {
	switch(_val) {
        case bam_skill11:
            ida.get_mp = addition;
        break;
		case hammer_skill4 :
			ida.to_cid = global.cid_array[addition];
		break;
		case obj_cutscene :
			ida.text = addition;
		break;
		case obj_last :
			ida.to_cid = addition;
		break;
        case obj_spin1:
        case obj_spin2:
        case obj_spin3:
            ida.temp_YA = addition;
            ida.x = (xxx / 100) * room_width;
            ida.y = (yyy / 100) * room_height;
        break;
        case obj_thanks:
            ida.x = (xxx / 1000) * room_width;
            ida.y = (yyy / 1000) * room_height;
            ida.xstart = ida.x;
            ida.ystart = ida.y;
        break;
		case hammer_skill3_0 :
			ida.speedd = addition;
		break;
        case obj_snow4 :
		case obj_snow41 :
		case obj_snow42 :
		case babo_skill2 :
		case obj_endemic :
            ida.YA = addition;
        break;
		case obj_snow43 :
            ida.cid_id = addition;
			ida.cid = string_digits(object_get_name(addition));
			ida.team = serve.team[ida.cid];
        break;
		case obj_babo_skill1 :
			ida.type = addition;
		break;
		case obj_roulette_control :
			ida.result = addition;
		break;
    }
}

function server49_create_instance_str(name, skill_x, skill_y, addition) {
	if (room == room_tuto) {
		var ida = instance_create_depth(skill_x, skill_y, -100, name);
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
		server_switch(name, addition, ida);
		exit;
	}
	buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
	buffer_write(testing.buff_chat, buffer_u8, 49);//78은 모두에게 보내기
	buffer_write(testing.buff_chat, buffer_u8, 0);
	buffer_write(testing.buff_chat, buffer_u16, name);
	buffer_write(testing.buff_chat, buffer_u16, skill_x);
	buffer_write(testing.buff_chat, buffer_u16, skill_y);
	buffer_write(testing.buff_chat, buffer_u8, global.team);
	buffer_write(testing.buff_chat, buffer_string, addition);
	
	network_send_packet(global.intuto, testing.buff_chat, buffer_tell(testing.buff_chat));	
}

function server79_create_instace_ext(argument0, argument1, argument2, argument3) {
	var addition = argument3; //추가적인 값
	if (room == room_tuto) {
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
		server_switch(argument0, argument3, ida);
		exit;
	}
	var name = argument0;//obj스킬 변수값
	var skill_x = argument1;// x좌표
	var skill_y = argument2;// y좌표 
	buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
	buffer_write(testing.buff_chat, buffer_u8, 79);//78은 모두에게 보내기
	buffer_write(testing.buff_chat, buffer_u8, 0);
	buffer_write(testing.buff_chat, buffer_u16, name);
	buffer_write(testing.buff_chat, buffer_u16, skill_x);
	buffer_write(testing.buff_chat, buffer_u16, skill_y);
	buffer_write(testing.buff_chat, buffer_u8, global.team);
	buffer_write(testing.buff_chat, buffer_u16, addition);
	
	network_send_packet(global.intuto, testing.buff_chat, buffer_tell(testing.buff_chat));
}
