/// @description Insert description here
// You can write your code in this editor
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
spin += 1;
y = cid_id.y + lengthdir_y(105 * cid_id.big_val,spin);
x = cid_id.x + lengthdir_x(105 * cid_id.big_val,spin);


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

if (hp <= 0 or cid_id.live != 1) {
	 var name = instance_create_depth(x, y, 200,obj_snow_effect1);
      name.cid_id = cid_id;
      name.cid = cid;
      name.team = team;
      instance_destroy();
	  
}