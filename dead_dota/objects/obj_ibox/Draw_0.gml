x = camera_get_view_x(view_camera[0]) + global.window_width / 2 - (1024 / 2 - xstart);
y = camera_get_view_y(view_camera[0]) + ystart;

if (collision_point(mouse_x, mouse_y, id, true, false)) {
	draw_sprite_ext(spr_ibox, 0, x, y,1,1,0,c_gray,1)
}
else{
	draw_sprite(spr_ibox, 0, x, y)
}
