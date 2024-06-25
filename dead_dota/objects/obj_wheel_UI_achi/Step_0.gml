/// @description Insert description here
// You can write your code in this editor
if (hat_button_main.windows == 9) {
	if (collision_point(mouse_x, mouse_y, id, false, false)) {
		if (mouse_check_button(mb_left)) {
			obj_achievement.layer_height = (mouse_y - y) / sprite_height * obj_achievement.limit_height;
		}
	}
}