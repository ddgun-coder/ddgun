/// @description Insert description here
// You can write your code in this editor
var _id = instance_create_depth(x, y, depth, obj_firework_main);	
_id.cid = cid;
_id.cid_id = cid_id;
_id.team = team;
_id.image_blend = choose(c_white, c_red, c_yellow, c_aqua, c_dkgray);
_id.image_blend2 = choose(c_white, c_red, c_yellow, c_aqua, c_dkgray);
_id.num = 8;
_id.scale = 0.6;