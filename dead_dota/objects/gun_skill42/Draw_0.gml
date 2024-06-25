/// @description Insert description here
// You can write your code in this editor
switch(cid_id.skin) {
    case 0:
        for (var i = 0; i < 6; i++) {
	        draw_sprite_ext(spr_gun41, 0, cid_id.x + lengthdir_x(50 * big_val, YA - 90) + lengthdir_x((-110 + i * 50) * big_val, YA), cid_id.y + lengthdir_y(35 * big_val, YA - 90) + lengthdir_y((-110 + i * 50) * big_val, YA),
	        big_val, big_val, YA, c_white, 1);
        }
    break;
    case 1:
        for (var i = 0; i < 6; i++) {
	        draw_sprite_ext(spr_gun41, 1, cid_id.x + lengthdir_x(50 * big_val, YA - 90) + lengthdir_x((-110 + i * 50) * big_val, YA), cid_id.y + lengthdir_y(35 * big_val, YA - 90) + lengthdir_y((-110 + i * 50) * big_val, YA),
	        big_val, big_val, YA, c_white, 1);
        }
    break;
	default:
	    for (var i = 0; i < 6; i++) {
	        draw_sprite_ext(spr_gun4, 0, cid_id.x + lengthdir_x(50 * big_val, YA - 90) + lengthdir_x((-110 + i * 50) * big_val, YA), cid_id.y + lengthdir_y(35 * big_val, YA - 90) + lengthdir_y((-110 + i * 50) * big_val, YA),
	        big_val, big_val, YA, c_white, 1);
        }
    break;
}