path_scale = 2 * cid_id.big_val;
path_speed = 18 * cid_id.big_val;
image_xscale = cid_id.big_val * 1.25;
image_yscale = cid_id.big_val * 1.25;
path_orientation = cid_id.YA;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}