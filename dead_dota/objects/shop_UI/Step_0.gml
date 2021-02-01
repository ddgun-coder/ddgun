/// @description Insert description here
// You can write your code in this editor
x = xstart + camera_get_view_x(view_camera[0]);
y = ystart + camera_get_view_y(view_camera[0]);
if (act) { 
	xstart = mouse_x - this_x - camera_get_view_x(view_camera[view_current]);
	ystart = mouse_y - this_y - camera_get_view_y(view_camera[view_current]);
	shop_button1.xstart = xstart + 32;
	shop_button1.ystart = ystart + 96;
	shop_button2.xstart = xstart + 32;
	shop_button2.ystart = ystart + 96;
	if (instance_exists(obj_shop_exit)) {
		obj_shop_exit.xstart = xstart + 448;
		obj_shop_exit.ystart = ystart;
	}
	if (instance_exists(obj_shopb)) {
		with(obj_shopb) {
			xstart = other.xstart - 64;
			ystart = other.ystart + 64 + num * 64;
		}
	}
	if (instance_exists(obj_shop_next)) {
		obj_shop_next.xstart = xstart + 400;
		obj_shop_next.ystart = ystart;
	}
	if (instance_exists(obj_shop_pre)) {
		obj_shop_pre.xstart = xstart + 350;
		obj_shop_pre.ystart = ystart;
	}
}