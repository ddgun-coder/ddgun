image_angle = cid_id.YA;
y += lengthdir_y(dis, YA - 90);

x = cid_id.x;
y = cid_id.y + dis;

if(ready = false) {
    switch (dis_c) {
	    case 0 :
	        if( dis < 5) {
		        dis += 1
		    }
		    else {
		       dis_c = 1
		    }
	    break;
	    case 1:
	        if( dis = -5) {
		       dis_c = 0
	    	}
		    else {
		        dis -= 1
		    }
	    break;
    }
}

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