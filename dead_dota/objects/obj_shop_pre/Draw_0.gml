var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
x = xstart + xx;
y = ystart + yy;
if (instance_exists(shop_UI)) {
	if (shop_UI.windows = true and shop_UI.windows_index != 0)
	{
		draw_self();
	}	
}