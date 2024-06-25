/// @description Insert description here
// You can write your code in this editor
move_towards_point(to_cid.x, to_cid.y, 25);

if (global.my_cid_id != to_cid) {
	if (place_meeting(x, y, to_cid)) {
		instance_destroy();
	}
}












