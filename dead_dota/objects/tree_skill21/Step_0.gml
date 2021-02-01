x = cid_id.x
y = cid_id.y
image_angle = cid_id.YA;
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val * delta_big;
delta_big += 0.02;
if (image_yscale == 0) {
	instance_destroy();
}
if (testing.cid == cid) {
	solid = false;
}