x = cid_id.x 
y = cid_id.y

image_angle = cid_id.YA;
image_xscale = cid_id.big_val * 1 * size_x;
image_yscale = cid_id.big_val * 3 * size_y ;

if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	audio_stop_sound(eng_1_sound);
	instance_destroy();
}


if (show = true) {
	if(size_x < 1.2) {
		size_x += 0.015
		}
	if(size_y < 1.05) {
		size_y += 0.01
	}
	else {
		show = false
	}
}
else {
	size_x = 1
	size_y = 1
}