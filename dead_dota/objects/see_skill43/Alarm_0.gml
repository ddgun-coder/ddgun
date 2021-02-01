/// @description Insert description here
// You can write your code in this editor
if (camera_get_view_target(view_camera[0]) != testing.id) {
	camera_set_view_target(view_camera[0], testing.id);
}
else {
	camera_set_view_target(view_camera[0], cid_id.id);
}
alarm[0] = 40;