x = cid_id.x
y = cid_id.y
image_angle = cid_id.YA;
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
if (global.my_cid== cid) {
	solid = false;
}