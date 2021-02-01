x = cid_id.x + lengthdir_x(-300 + deltay, cid_id.YA - 90);
y = cid_id.y + lengthdir_y(-300 + deltay, cid_id.YA - 90);
image_angle = cid_id.YA;
image_xscale = cid_id.big_val * 2;
image_yscale = cid_id.big_val * 2;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}
if (testing.cid == cid) {
	solid = false;
}
if (deltay < 300) {
	deltay += 15;
}