image_xscale = cid_id.big_val * 3;
image_yscale = cid_id.big_val * 3;
image_angle += 15;
y = cid_id.y + lengthdir_y(150 * cid_id.big_val, cid_id.YA - 90);
x = cid_id.x + lengthdir_x(150 * cid_id.big_val, cid_id.YA - 90);

if(cid_id.cancle_able == false or cid_id.sturn > 0 ) {
	audio_stop_sound(shit_3_sound);
	instance_destroy();
}