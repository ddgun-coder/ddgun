draw_self();
if (collision_point(mouse_x, mouse_y, id, true, false)) {
image_blend = c_gray;
}
else {
image_blend = c_white;
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