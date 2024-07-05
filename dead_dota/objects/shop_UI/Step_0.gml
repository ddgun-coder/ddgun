/// @description Insert description here
// You can write your code in this editor
x = xstart + camera_get_view_x(view_camera[0]);
y = ystart + camera_get_view_y(view_camera[0]);

if (instance_exists(obj_shop_exit)) {
	obj_shop_exit.x = x + 560 - sprite_xoffset;
	obj_shop_exit.y = y + 47 - sprite_yoffset - 18;
}

if (act) { 
	xstart = mouse_x - this_x - camera_get_view_x(view_camera[0]);
	ystart = mouse_y - this_y - camera_get_view_y(view_camera[0]);
	shop_button1.xstart = xstart + 78;
	shop_button1.ystart = ystart + 119;
	shop_button2.xstart = xstart + 78;
	shop_button2.ystart = ystart + 119;
	if (instance_exists(obj_shopb)) {
		with(obj_shopb) {
			xstart = other.xstart - 64;
			ystart = other.ystart + 64 + num * 64;
		}
	}
}
if (windows) {
		
}