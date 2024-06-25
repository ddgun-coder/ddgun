/// @description Insert description here
// You can write your code in this editor
var _id = instance_create_depth(x, y, depth, obj_firework_main);	
_id.cid = cid;
_id.cid_id = cid_id;
_id.team = team;
_id.image_blend = make_color_rgb(irandom(255), irandom(255), irandom(255));
_id.image_blend2 = make_color_rgb(irandom(255), irandom(255), irandom(255));
_id.num = 12;
_id.scale = 1.5;