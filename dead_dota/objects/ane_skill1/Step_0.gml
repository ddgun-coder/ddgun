x = cid_id.x
y = cid_id.y
image_angle = cid_id.YA;
if (cid_id.skin == 2) {
	sprite_index =  Spr_evil_ane1;
}
if (cid_id.skin == 3) {
	sprite_index =  spr_ex_ane1;
}
image_xscale = cid_id.big_val * 1.5;
image_yscale = cid_id.big_val * delta_big;

if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	if (!out) {
		delta = -0.15;
		delta_go = 2;
		alarm[0] = 10;
		out = true;
	}
}
if (delta_big < delta_go) {
	delta_big += delta;
}

if (image_yscale == 0) {
	instance_destroy();
}

if (cid_id == global.my_cid_id) {
	 solid = false;
}
else {
    if (time % 2 != 0) {
	    solid = false;
    }
    else {
	    solid = true;
    }
}
time++;