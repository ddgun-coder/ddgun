image_angle = cid_id.YA;

x = cid_id.x;
y = cid_id.y;

if (ready = false) {
	image_xscale = cid_id.big_val * 1;
    image_yscale = cid_id.big_val * 1;
    if (sturn == 0) {
	    var _inst = instance_place(x, y, obj_dmgable);
	        if _inst != noone
	        {
			    if (variable_instance_exists(_inst, "team")) {
				    if (team != _inst.team or (_inst.team == 2 and _inst.cid != cid)) {
					    if (!variable_instance_exists(_inst, "dmg")) {
						    _inst.dmg = 1;
					    }
					    ma_power += _inst.dmg;
					    sturn = 20;
				    }
			    }
	        }
        }
        else {
	        sturn--;	
        }
    }