var cur_xview = camera_get_view_x(view_camera[view_current]) + xstart;
var cur_yview = camera_get_view_y(view_camera[view_current]) + ystart;
draw_sprite(spr_map, 0, cur_xview, cur_yview);
for(i = 1; i <= 24; i++) {
	var what = global.cid_array[i]
	if (what.x > 0 and what.y > 0) {
		if (what == global.my_cid_id) {
			draw_sprite(spr_player, -1, cur_xview + (what.x / room_width) * sprite_width, cur_yview + (what.y / room_height) * sprite_height);	
		}
		else {
			draw_sprite(spr_player, what.team, cur_xview + (what.x / room_width) * sprite_width, cur_yview + (what.y / room_height) * sprite_height);	
		}
	}
}
if (instance_exists(obj_soccer)) {
	draw_sprite(spr_ball_small, -1, cur_xview + (obj_soccer.x / room_width) * sprite_width, cur_yview + (obj_soccer.y / room_height) * sprite_height);
}