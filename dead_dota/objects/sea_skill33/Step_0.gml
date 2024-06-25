y = cid_id.y + lengthdir_y(65 * cid_id.big_val,spin);
x = cid_id.x + lengthdir_x(65 * cid_id.big_val,spin);
spin += 10;
image_angle = spin;
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
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
					sturn = 40;
					audio_play_sound(have_hit, 9,false);
				}
			}
	    }
}
else {
	sturn--;	
}

if (hp <= 0) {
	var name = instance_create_depth(x, y, 200, sea_skill31);
    name.cid_id = cid_id;
    name.cid = cid;
    name.team = team;
    instance_destroy();
}

if (instance_number(sea_skill33) >= 2) {
   instance_destroy();   
}