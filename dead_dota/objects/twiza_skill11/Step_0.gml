image_xscale = cid_id.big_val * 3;
image_yscale = cid_id.big_val * 3;
image_angle = cid_id.YA;
if (cid_id.skin == 1) {
	sprite_index =  spr_dd_te1;
}
y = cid_id.y + lengthdir_y(550 * cid_id.big_val, cid_id.YA - 90);
x = cid_id.x + lengthdir_x(550 * cid_id.big_val, cid_id.YA - 90);
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}

if (time % 3 != 0) {
	solid = false;
}
else {
	solid = true;
}
time++;