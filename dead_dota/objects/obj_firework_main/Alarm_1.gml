/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < num; i++) {
	var dir = i / num * 360;
	var _id = instance_create_depth(x + lengthdir_x(8 * scale, dir), y + lengthdir_y(8 * scale, dir), depth, obj_firework_arm);	
	_id.image_angle = dir;
	_id.cid = cid;
	_id.cid_id = cid_id;
	_id.team = team;
	_id.scale = scale;
	if (i % 2 == 0) {
		_id.image_blend = image_blend2;
	}
	else {
		_id.image_blend = image_blend;	
	}
}
