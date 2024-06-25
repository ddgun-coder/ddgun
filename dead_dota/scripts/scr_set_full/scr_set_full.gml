// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_full(){
	window_center();
	var temp_x = window_get_x();
	var temp_y = window_get_y();
	window_set_position(0,0);	
	window_set_size(temp_x * 2 + global.window_width, temp_y * 2 + global.window_height);
}

function scr_reset_full(){
	window_set_size(global.window_width, global.window_height + 18);
	window_center();
}