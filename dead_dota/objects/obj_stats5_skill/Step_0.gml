/// @description Insert description here
// You can write your code in this editor
move_time--;
if (move_time < 0) {
	move_towards_point(cid_id.x, cid_id.y, 25);

	if (place_meeting(x, y, cid_id)) {
		instance_destroy();
	}
}
