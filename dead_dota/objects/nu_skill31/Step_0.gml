x = camera_get_view_x(view_camera[view_current]);
y = camera_get_view_y(view_camera[view_current]) + dy;
if(be_inv == true) {
	image_alpha -= 0.02;	
}
image_angle = 0;
dy -= 3;
