x = cid_id.x + lengthdir_x(35 * cid_id.big_val,cid_id.YA-90)
y = cid_id.y + lengthdir_y(35 * cid_id.big_val,cid_id.YA-90)
image_angle = cid_id.YA;
image_xscale = cid_id.big_val * 1.6;
image_yscale = cid_id.big_val * 2;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}
if (cid_id.skin == 3) {
	sprite_index =  spr_holysward3;
}