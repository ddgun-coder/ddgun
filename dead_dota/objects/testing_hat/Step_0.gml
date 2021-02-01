x = cid_id.x + lengthdir_x(cid_id.charge * 15, cid_id.YA - 90)
y = cid_id.y + lengthdir_y(cid_id.charge * 15, cid_id.YA - 90)
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
image_index = cid_id.hat_frame + cid_id.skin;
solid = cid_id.solid;
if (cid_id.visible = false) {
	visible = false;
}
if (cid_id.hat != spr_hat6) {
	sprite_index = cid_id.hat
}
else {
	sprite_index = spr_hat6_1 + cid_id.hat_frame;
}
image_angle = cid_id.YA + cid_id.hat_YA
image_alpha = cid_id.alpha;
if (place_meeting(x, y, testing)) {
	if (sprite_index == spr_level5_hat16) {
		if (image_index == 3) {
			if (global.my_cid_id != cid_id) {
				if (testing.sturn <= 0) {
					testing.hp -= 2;
					testing.sturn = 10;
					testing.counter = 7;
					show_debug_message(cid_id);
					show_debug_message(global.my_cid_id);
				}
			}
		}
		if (image_index == 2) {
			if (global.my_cid_id != cid_id) {
				testing.hp -= 0.05;
			}
		}
	}	
}