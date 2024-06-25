if (instance_exists(pickaxe_UI)) {
	if (pickaxe_UI.windows = true and pickaxe_UI.index != spr_pickaxe1)
	{
		draw_sprite_ext(spr_next, 0, xx , yy , -1, 1, 0, -1, 1)
	}
}
x = xx + camera_get_view_x(view_camera[0])
y = yy + camera_get_view_y(view_camera[0])