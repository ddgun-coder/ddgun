x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);
image_angle = 0;
if (image_alpha > 0.5) {
	image_alpha -= 0.002;
}
if(cid_id.sturn > 0) {
	instance_destroy();
}