x = cid_id.x;
y = cid_id.y;
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val * 1.5;
image_angle = cid_id.YA;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}
if (time % 3 != 0) {
	solid = false;
}
else {
	solid = true;
}
time++;