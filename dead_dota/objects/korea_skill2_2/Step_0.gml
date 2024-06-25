x = cid_id.x + lengthdir_x(100 * cid_id.big_val,cid_id.YA-90)
y = cid_id.y + lengthdir_y(100 * cid_id.big_val,cid_id.YA-90)
image_angle = cid_id.YA;
image_xscale = cid_id.big_val * 4;
image_yscale = cid_id.big_val * 2;

if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}

if (cid_id.team == global.team or cid_id == global.my_cid_id) {
	 solid = false;
}