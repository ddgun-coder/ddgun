x -= lengthdir_x(5, YA - 90);
y -= lengthdir_y(5, YA - 90);
image_angle += 10;
if (cid_id.skin == 1) {
	sprite_index =  spr_bb_stonepunk2;
}
if (cid_id.skin == 2) {
	sprite_index =  spr_hanball2;
}
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
for (var i = 1; i < 24; i++) {
	if (i != global.my_cid_id) {
		if (place_meeting(x, y, global.cid_array[i])) {
			if ((global.cid_array[i]).sturn > 0) {
				instance_destroy();
			}
		}
	}
}