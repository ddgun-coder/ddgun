if (startment = 1) {
	x += lengthdir_x(20 * cid_id.big_val,cid_id.YA-90);
	y += lengthdir_y(20 * cid_id.big_val,cid_id.YA-90);
}
if(cid_id.cancle_able == false) {
	instance_destroy();
}
image_xscale = cid_id.big_val * 6;
image_yscale = cid_id.big_val * 6;