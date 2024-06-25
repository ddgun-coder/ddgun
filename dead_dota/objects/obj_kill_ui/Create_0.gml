/// @description Insert description here
// You can write your code in this editor
layer_height = 0;
limit_height = global.hat_limit * 64 - 512;
surf = -1;
hat = spr_none;
left_arm_deltay = 0;
right_arm_deltay = 0;
left_arm_deltay = 0;
left_arm_deltay = 0;
left_arm_xscale = 1;
right_arm_xscale = -1;
left_arm_YA = 0;
right_arm_YA = 0;
left_foot_YA = 0;
right_foot_YA = 0;
YA = 0;
left_arm_yscale = 1;
right_arm_yscale = 1;
left_foot_xscale = 1;
left_foot_deltax = 0;
left_foot_deltay = 0;
right_foot_deltax = 0;
right_foot_deltay = 0;
right_foot_xscale = -1;
left_foot_yscale = 1;
right_foot_yscale = 1;
left_arm_deltax = 0;
left_arm_deltay = 0;
right_arm_deltax = 0;
right_arm_deltay = 0;
index = 0;
function ui_surf_set() {
	var spr;
	if (!surface_exists(surf)) {
		surf = surface_create(global.hat_limit * 64, 64);
	}
	surface_set_target(surf);
	for (var i = 0; i < global.hat_limit; i++) {
		spr = global.hat_array[i];
		var _xoffset = sprite_get_xoffset(spr);
		var _yoffset = sprite_get_yoffset(spr);
		draw_sprite(select, 0, 64 * i + 32, 32);
		draw_sprite(spr_face1, 0, 64 * i + 32, 32);
		draw_sprite_part(spr, 0, _xoffset - 32, _yoffset - 32, 64, 64, 64 * i, 0);
	}
	surface_reset_target();
}