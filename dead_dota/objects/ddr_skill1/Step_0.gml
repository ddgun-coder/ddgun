image_xscale = cid_id.big_val * 2;
image_yscale = (0.6 + deltay) * cid_id.big_val * 2;
image_angle = cid_id.YA;
y = cid_id.y ;
x = cid_id.x ;
if (alarm[0] > 40) {
	deltay += 0.01;
}
else {
	deltay -= 0.01;
}
if(cid_id.sturn > 0) {
	instance_destroy();
}