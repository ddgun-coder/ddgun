var ind = real(string_digits(sprite_get_name(pickaxe_UI.index))) - 1;
if (global.pickaxe_exist[ind] = true and global.pickaxe_index != pickaxe_UI.index and pickaxe_UI.windows = true)
{
	draw_sprite_ext(spr_ok_button, 0, xx, yy, 2, 2, 0, -1, 1)
}
x = xx + camera_get_view_x(view_camera[0])
y = yy + camera_get_view_y(view_camera[0])