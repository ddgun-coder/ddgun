image_xscale = cid_id.big_val * 3;
image_yscale = cid_id.big_val * 3;
image_angle = cid_id.YA;
y = cid_id.y + lengthdir_y(880 * cid_id.big_val, cid_id.YA - 90);
x = cid_id.x + lengthdir_x(880 * cid_id.big_val, cid_id.YA - 90);
if (testing.cancle_able == false or testing.sturn > 0) {
	instance_destroy();	
}