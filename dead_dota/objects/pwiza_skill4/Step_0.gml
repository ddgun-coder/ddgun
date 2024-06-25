x = cid_id.x;
y = cid_id.y;
image_xscale = cid_id.big_val * 6;
image_yscale = cid_id.big_val * 6;
image_angle = cid_id.YA;
if(cid_id.sturn > 0 or cid_id.cancle_able == false) {
	instance_destroy();
}