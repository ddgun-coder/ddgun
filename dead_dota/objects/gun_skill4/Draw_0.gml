/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 10; i++) {
	draw_sprite_ext(spr_gun4, 0, cid_id.x + lengthdir_x(35 * big_val, YA - 90) + lengthdir_x((-140 + i * 35) * big_val, YA), cid_id.y + lengthdir_y(35 * big_val, YA - 90) + lengthdir_y((-140 + i * 35) * big_val, YA),
	big_val, big_val, YA, c_white, 1);
}