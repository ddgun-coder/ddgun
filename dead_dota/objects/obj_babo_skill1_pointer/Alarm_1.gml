/// @description Insert description here
// You can write your code in this editor
with (obj_babo_skill1) {
	if (other.cid == cid and move_first and image_index < 2) {
		var to_time = 15;
		
		image_index++;
		image_xscale = cid_id.big_val * 1
		image_yscale = cid_id.big_val * 1
		audio_play_sound(kpower_1_sound, 9,false);
		alarm[3] = to_time;
		spin_delay = 40;
		delay = 0;
		go_speed = max(point_distance(x, y, other.x, other.y) / to_time + 7, to_time) + 15;
		angle = point_direction(x, y, other.x, other.y)
	}
}