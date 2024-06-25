/// @description Insert description here
// You can write your code in this editor
if (moveable) {
	x += lengthdir_x(10, image_angle - 90);
	y += lengthdir_y(10, image_angle - 90);
	go_to = point_direction(x, y, minind.x, minind.y);
}
if (distance_to_object(minind) < 10) {
	moveable = false;
	if (a_cooltime < 0) {
		a_cooltime = 50;
		my_se = layer_sequence_create(temp_layer, x, y, Sequence1);
	}
}
if (layer_sequence_is_finished(my_se)) {
	var ida = instance_create_depth(x, y, -100, tree_skill34);
	ida.team = team;
	ida.cid = cid;
	ida.cid_id = cid_id;
	moveable = true;
	layer_sequence_destroy(my_se);
}
a_cooltime--;
image_angle += angle_difference(go_to + 90, image_angle) / 5;
if (sturn == 0) {
	var _inst = instance_place(x, y, obj_dmgable);
	if _inst != noone
	    {
			if (variable_instance_exists(_inst, "team")) {
				if (team != _inst.team or (_inst.team == 2 and _inst.cid != cid)) {
					if (!variable_instance_exists(_inst, "dmg")) {
						_inst.dmg = 1;
					}
					hp -= _inst.dmg;
					sturn = 30;
					audio_play_sound(have_hit, 9,false);
				}
			}
	    }
}
else {
	sturn--;	
}

if (hp <= 0 or cid_id.live != 1) {
	instance_destroy()	
}