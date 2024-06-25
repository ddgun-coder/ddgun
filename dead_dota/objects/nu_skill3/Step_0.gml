// / l2C6B138D_0 : YoYo Games.Common.Execute_Code
// / l2C6B138D_1 : 1
// / l2C6B138D_2 : 2C6B138D
// / l2C6B138D_3 : "code" "x = camera_get_view_x (view_camera [view_current]); $ (13_10) y = camera_get_view_y (view_camera [view_current]) + dy; $ (13_10) if (be_inv == true) {$ ( 13_10) image_alpha-= 0.02; $ (13_10)} $ (13_10) image_angle = 0; $ (13_10) dy-= 3; "
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]) + dy;
if(be_inv == true) {
	image_alpha -= 0.02;	
}
image_angle = 0;
dy -= 3;