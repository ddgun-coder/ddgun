/// @description Insert description here
// You can write your code in this editor
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
if (hp <= 0) {
	instance_destroy()	
}