x = cid_id.x;
y = cid_id.y;

if (sturn == 0) {
	image_blend = c_white
	var _inst = instance_place(x, y, obj_dmgable);
	if _inst != noone
	    {
			if (variable_instance_exists(_inst, "team")) {
				if (team != _inst.team or (_inst.team == 2 and _inst.cid != cid)) {
					if (!variable_instance_exists(_inst, "dmg")) {
						_inst.dmg = 1;
					}
					sturn = 40;
					alarm[2] = 1
					alarm[3] = 40
					audio_play_sound(have_hit, 9,false);
				}
			}
	    }
}
else {
	image_alpha = 0.8
	sturn--;
}

if (image_index = 3) {
	alarm[0] = 1
}