draw_self();

if (collision_point(mouse_x, mouse_y, id, true, false)) {
	image_blend = c_gray;
	image_xscale = 0.9
	image_yscale = 0.9
}
else {
	image_blend = c_white;
	image_xscale = 1
	image_yscale = 1
}


/*draw_sprite(global.arm, 0, x, y);*/
if (hat_button_main.windows == 2)
{
	image_index = 1;	
}
else
{
	image_index = 0;	
}