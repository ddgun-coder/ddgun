if (startment = 1) {
	if (is_straight) {
		x += lengthdir_x(24 * cid_id.big_val,YA-90);
		y += lengthdir_y(24 * cid_id.big_val,YA-90);
		image_angle = YA;
	}
	else {
		x = cid_id.x + lengthdir_x(24 , cid_id.YA - 90);
		y = cid_id.y + lengthdir_y(24 , cid_id.YA - 90);
	}
	deltx += 0.3;
	deltp -= 0.05;
}
else {
	x = cid_id.x + lengthdir_x(24 , cid_id.YA - 90);
	y = cid_id.y + lengthdir_y(24 , cid_id.YA - 90);
	image_xscale += 0.075;
	image_yscale += 0.075;	
}
if (cid_id.skin == 2) {
	sprite_index =  spr_new_yellow1;
}
cancle--;
if(startment = 0 and cancle < 0) {
	if(cid_id.cancle_able == false or cid_id.sturn > 0) {
		is_straight = false;
		image_blend = c_red;
	}
}
