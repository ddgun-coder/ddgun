a_cooltime = 60;
if (camera_get_view_width(view_camera[0]) == 1024) {
	camera_set_view_size(view_camera[0], view_wport[0] * 2, view_hport[0] * 2);	
}
else {
	camera_set_view_size(view_camera[0], 1024, 768);
}