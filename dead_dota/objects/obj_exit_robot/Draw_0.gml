/// @description Insert description here
// You can write your code in this editor
draw_self();
var len = max(point_distance(x, y, cid_id.x, cid_id.y) * curve_val, 0);
var xscale = (len) / 32;
draw_sprite_ext(spr_exit_rope, 0, x, y, xscale, 1, dir, c_white, 1);
draw_sprite_ext(spr_exit_hand, 0, x + lengthdir_x(len, dir), y + lengthdir_y(len, dir), 1, 1, dir, c_white, 1); 
