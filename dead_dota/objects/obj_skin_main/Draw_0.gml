/// @description Insert description here
// You can write your code in this editor
draw_self();
if (collision_point(mouse_x, mouse_y, id, true, false)) {
image_blend = c_gray;
}
else {
image_blend = c_white;
}

/*draw_sprite(global.hat, global.skin * 4, x, y);*/
if (hat_button_main.windows == 5)
{
	image_index = 1;	
}
else
{
	image_index = 0;	
}