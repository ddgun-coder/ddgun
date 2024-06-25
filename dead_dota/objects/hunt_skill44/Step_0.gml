/// @description Insert description here
// You can write your code in this editor
with(testing) {
	sturn = 10;
	x = other.cid_id.x;
	y = other.cid_id.y;
	big_val = 0;
	buff_index = spr_wing1;
	buff_time = 10;
}
camera_set_view_target(view_camera[0], cid_id.id);
if (cid_id.sturn > 0) {
	camera_set_view_target(view_camera[0], testing.id);
	instance_destroy();
}