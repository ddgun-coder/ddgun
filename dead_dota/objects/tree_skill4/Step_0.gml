/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(8, image_angle - 90);
y += lengthdir_y(8, image_angle - 90);
go_to = point_direction(x, y, minind.x, minind.y)
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

if (instance_number(tree_skill4) > 1) {
   instance_destroy();   
}