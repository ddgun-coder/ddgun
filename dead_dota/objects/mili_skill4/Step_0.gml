x = cid_id.x
y = cid_id.y
image_angle = cid_id.YA;
image_xscale = cid_id.big_val * 2;
image_yscale = cid_id.big_val * 2;
if (cid_id == global.my_cid_id) {
	solid = false;
}
else {
	if (time % 2 != 0) {
		solid = true;
	}
	else {
		solid = false;
	}
	time++;
}
if (cid_id.hp < 0) {
	instance_destroy()	
}