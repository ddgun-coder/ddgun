x = cid_id.x;
y = cid_id.y;
image_angle = cid_id.temp_YA
image_xscale = cid_id.big_val * 1.5
image_yscale = cid_id.big_val * 1.5;

if(cid_id.cancle_able == false and cid_id.sturn > 0) {
	instance_destroy();
}