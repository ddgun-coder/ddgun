if (boost != true) {
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
}

if (mp >= 30) {
	boost = true
	boost_time = 120
	mp = 0
	image_blend = c_red
	alarm[1] = 1
	eng_buff = spr_wing1
}

if (boost_time <= 0) {
	boost = false
	image_blend = c_white
	eng_buff = spr_none
}

boost_time--

if (hp <= 0 or cid_id.live != 1) {
	var name = instance_create_depth(x, y, 200, eng_skill_destroy);
	name.cid_id = cid_id;
	name.cid = cid;
	name.team = team;
	instance_destroy()
}