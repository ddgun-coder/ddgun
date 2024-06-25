image_xscale = cid_id.big_val * 2;
image_yscale = cid_id.big_val * 2;
image_angle = cid_id.YA;
x = cid_id.x;
y = cid_id.y;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}