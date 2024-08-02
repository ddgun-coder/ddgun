image_angle = cid_id.YA;
image_xscale = cid_id.big_val * ready;
image_yscale = cid_id.big_val * 20;

if(ready_to = false) {
	ready -= 0.01
	image_alpha -= 0.01
}
else {
	ready = 5
	image_alpha = 1
}

if(cid_id.sturn > 0) {
	instance_destroy();
}