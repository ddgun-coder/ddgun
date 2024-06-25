/// @description Insert description here
// You can write your code in this editor
if (hat_button_main.windows == 10) {
	draw_self();

	if (!surface_exists(surf)) {
		ui_surf_set();
	}
	if (hat != spr_none) {
		var _drawx = x + 84;
		var _drawy = y + 195;
		draw_sprite_ext(global.foot, 0, _drawx + lengthdir_x(-20 + left_foot_deltax, YA) + lengthdir_x(10 + left_foot_deltay, YA + 270), _drawy + lengthdir_y(-20 + left_foot_deltax, YA) + lengthdir_y(10 + left_foot_deltay, YA + 270), left_foot_xscale, left_foot_yscale, left_foot_YA, -1, 1);//왼foot
		draw_sprite_ext(global.foot, 0, _drawx + lengthdir_x(20 + right_foot_deltax, YA) + lengthdir_x(10 + right_foot_deltay, YA + 270), _drawy + lengthdir_y(20 + right_foot_deltax, YA) + lengthdir_y(10 + right_foot_deltay, YA + 270), right_foot_xscale, right_foot_yscale, right_foot_YA, -1, 1);//오른foot
		draw_sprite(global.face, 0, _drawx, _drawy);
		draw_sprite_ext(global.arm, 0, _drawx + lengthdir_x(-20 + left_arm_deltax, YA) + lengthdir_x(left_arm_deltay, YA + 270), _drawy + lengthdir_y(-20 + left_arm_deltax, YA) + lengthdir_y(left_arm_deltay, YA + 270), left_arm_xscale, left_arm_yscale, left_arm_YA, -1, 1);//왼손
		draw_sprite_ext(global.arm, 0, _drawx + lengthdir_x(20 + right_arm_deltax, YA) + lengthdir_x(right_arm_deltay, YA + 270), _drawy + lengthdir_y(20 + right_arm_deltax, YA) + lengthdir_y(right_arm_deltay, YA + 270), right_arm_xscale, right_arm_yscale, right_arm_YA, -1, 1);//오른손
		draw_sprite(hat, 0, _drawx, _drawy);
	}
	if (!global.get_data) {
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(x + 319, y + 137, "데이터 없음!");
	}
	else {
		draw_sprite_part(spr_kill_bar, 0, 0, 0, 309 * (global.hat_aexp_remain[index] / global.hat_aexp_max[index]), 64, x + 183, y + 59);
		draw_set_halign(fa_right);
		draw_set_valign(fa_top);
		draw_text_bold_color(x + 494, y + 84, string("LEVEL {2}, EXP : {0} / {1}", global.hat_aexp_remain[index], global.hat_aexp_max[index], global.hat_level[index]), c_black, c_red);
		draw_set_halign(fa_left);
		draw_text_bold_color(x + 183, y + 120, string("kill : {0}", global.kill_array[index]), c_black, c_red);
		draw_text_bold_color(x + 183, y + 140, string("death : {0}", global.hat_death[index]), c_black, c_red);
		draw_text_bold_color(x + 183, y + 160, string("time : {0} min", global.hat_time[index]), c_black, c_red);
		draw_text_bold_color(x + 183, y + 180, string("aexp : {0}", global.hat_aexp[index]), c_black, c_red);
	}
	draw_surface_part(surf, layer_height, 0, 512, 64, x, y + 253);
}	