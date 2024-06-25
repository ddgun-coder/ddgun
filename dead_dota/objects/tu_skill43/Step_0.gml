to_cid_id();
image_xscale = 2.25;
image_yscale = 2.25;
spin += 5;
image_angle = spin


if(cid_id.sturn > 0) {
	if (cid == global.my_cid) {
        testing.hide_bam = false
    }
    cid_id.hide_bam = false
	if (cid_id.up_skill >= 3) {
		var ida = instance_create_depth(x, y, -100,tu_skill41);
		ida.team = team;
		ida.cid = cid;
		ida.cid_id = cid_id;
		ida.YA = image_angle;
		with(testing) {
			up_skill = 0;
		}

	}
	else {
		var ida = instance_create_depth(x, y, -100,tu_skill4);
		ida.team = team;
		ida.cid = cid;
		ida.cid_id = cid_id;
		ida.YA = image_angle;
	}
	instance_destroy();

}

if (cid_id.skin == 1) {
	sprite_index =  spr_west_tu42;
}

if (time % 2 != 0) {
	solid = false;
}
else {
	solid = true;
}

time++;