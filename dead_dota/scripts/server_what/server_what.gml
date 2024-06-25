// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function server_send_ach(val, buff_type, where, more = 0){
	if (instance_exists(serve)) {
		with(serve) {
			buffer_seek(buff_ach, buffer_seek_start, buff_ach_len);
			buffer_write(buff_ach, buffer_u8, buff_type);
			buffer_write(buff_ach, buff_type, val);
			buffer_write(buff_ach, buffer_string, where);
			buffer_write(buff_ach, buffer_u8, more);
			
			network_send_packet(0, buff_ach, buffer_tell(buff_ach));
		}
		achi_instance_create(more);
	}
}

function achi_instance_create(achi_ind) {
	var _x = camera_get_view_width(view_camera[view_current]);
	var _y = camera_get_view_height(view_camera[view_current]);
	var idd = instance_create_depth(_x, _y / 2 - 100, -99, obj_achi_ui);
	idd.achi_ind = achi_ind;
	repeat(3) {
		idd = instance_create_depth(_x - irandom_range(0, 64), _y / 2 - 100, -99, obj_achi_effect);
		idd.image_blend = make_color_rgb(irandom(255), irandom(255), irandom(255));
		idd.speed = 10;
		idd.image_angle = irandom(360);
		idd.direction = irandom_range(90, 180);
	}
}

function achi_get(ind) {
	global.achievement[ind].comple = true;
	server_send_ach(true, buffer_bool, "achievements", ind);	
}

function achi_get_if(ind) {
	 if (global.achievement[ind].comple == false) {
		global.achievement[ind].comple = true;
		server_send_ach(true, buffer_bool, "achievements", ind);
	 }
}