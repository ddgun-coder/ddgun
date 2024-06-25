/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left)) {
	activate_index = noone;
	var dx = mouse_x - x;
	var dm = (sprite_height + 11);
	if (5 <= dx and dx <= sprite_width + 5) {
		var num = array_length(keyboard_array);
		var ind = floor((mouse_y - y + surf_offset) / dm);
		if (0 <= ind and ind <= num) {
			activate_index = ind;
			set_surf();
		}
	}
}

if (activate_index != noone) {
	if (keyboard_check_pressed(vk_anykey)) {
		variable_global_set(keyboard_array[activate_index], keyboard_lastkey);	
		activate_index = noone;
		dupl_array = check_duplication();
		set_surf();
		save_key();
	}
}










