image_angle = cid_id.YA;
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
x = cid_id.x;
y = cid_id.y;
if instance_exists(nuke_skill41) {
	if (nuke_skill41.cid_id == cid_id) {
		image_index = 3;
		image_speed = 1;
	}
}
if instance_exists(nuke_skill42) {
	if (nuke_skill42.cid_id == cid_id) {
		image_index = 1;
		image_speed = 1;
	}
}
if ((image_index > 2 and image_index < 3) or image_index > 6.5) {
	image_speed = 0;
	image_index = 0;
}
depth = 100;

if (cid == global.my_cid) {
	with (testing) {
		terror_charge = 12;
	}
}