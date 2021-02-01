x = cid_id.x + lengthdir_x(400 * cid_id.big_val, cid_id.YA - 90);
y = cid_id.y -800 + deltay + lengthdir_y(400 * cid_id.big_val, cid_id.YA - 90);
image_angle = 0;
image_xscale = 4;
image_yscale = 4;
if(cid_id.sturn > 0) {
	instance_destroy();
}
if (testing.cid == cid) {
	solid = false;
}
if (deltay < 800) {
	deltay += 20;
}