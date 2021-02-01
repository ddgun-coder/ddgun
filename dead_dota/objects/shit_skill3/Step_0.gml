image_xscale = cid_id.big_val * 3;
image_yscale = cid_id.big_val * 3;
image_angle += 15;
y = cid_id.y + lengthdir_y(150 * cid_id.big_val, cid_id.YA - 90);
x = cid_id.x + lengthdir_x(150 * cid_id.big_val, cid_id.YA - 90);
if(cid_id.cancle_able == false) {
	instance_destroy();
}