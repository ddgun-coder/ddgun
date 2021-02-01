image_xscale = cid_id.big_val * 1.5;
image_yscale = cid_id.big_val * 1.5;
image_angle += 15;
image_index = cid_id.hat_frame + cid_id.skin * 4;
sprite_index = cid_id.hat;
y = cid_id.y + lengthdir_y(550 * cid_id.big_val, cid_id.YA - 90);
x = cid_id.x + lengthdir_x(550 * cid_id.big_val, cid_id.YA - 90);
if(cid_id.cancle_able == false) {
	instance_destroy();
}