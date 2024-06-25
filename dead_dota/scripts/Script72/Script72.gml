// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script72() {
	
}
function testing_sturn(_val) {
	testing.sturn = _val;
	testing.m_sturn = _val;
	testing.heal_stack += 1;
	testing.heal_stack_time = 80;
	testing.arm_type = "ouch"
	with(testing) {
		if (no_change = false) {
			terror_charge = 0;
			server77_equal(serve_val.sturn, sturn, buffer_u8)
			cancle_able = false;
			server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
		}
	}
	audio_play_sound(have_hit, 0, false);
}
function server_create_as(_obj, _x, _y) {
	var _id = instance_create_depth(_x, _y, depth, _obj);
	_id.to_cid = other.cid_id;
	_id.cid = other.cid;
	_id.cid_id = other.cid_id;
	_id.team = other.team;
	return _id;
}
function server_create_instance_to(_obj, _x, _y, _to) {
	if (room == room_tuto) {
		var ida = instance_create_depth(_x, _y, -100, _obj);
        ida.team = global.team;
        ida.cid = 0;
        ida.cid_id = global.cid_array[cid];
		ida.to_cid = _to;
        ida.image_angle = ida.cid_id.YA;
		if (ida.sprite_index == spr_attack_mask1 or ida.sprite_index == spr_attack_mask3) {
            if (global.show_hitbox == true) {
                ida.visible = true;   
            }
        }
        if (instance_exists(see_skill31)) {
            ida.visible = false;   
        }	
		exit;
	}
	if (!global.only_see) {
		var name = argument0;//obj스킬 변수값
		var skill_x = argument1;// x좌표
		var skill_y = argument2;// y좌표 
		buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
		buffer_write(testing.buff_chat, buffer_u8, 117);//78은 모두에게 보내기
		buffer_write(testing.buff_chat, buffer_u8, _to);
		buffer_write(testing.buff_chat, buffer_u8, 0);
		buffer_write(testing.buff_chat, buffer_u16, _obj);
		buffer_write(testing.buff_chat, buffer_u16, _x);
		buffer_write(testing.buff_chat, buffer_u16, _y);
		buffer_write(testing.buff_chat, buffer_u8, global.team);
	
		network_send_packet(global.intuto, testing.buff_chat, buffer_tell(testing.buff_chat));
	}
}
