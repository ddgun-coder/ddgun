/// @description Insert description here
// You can write your code in this editor
if (reverse == false) {
	if (testing.targeting == true and instance_exists(testing)) {
		if (testing.cur_target != pre_cid_id) {
			pre_cid_id = testing.cur_target;
			if (array_length(testing.targeting_array) > 1) {
				var _sub_index = noone;
				with(testing) {
					if (cur_target_index >= array_length(targeting_array) - 1) {
						_sub_index = targeting_array[0];
					}
					else {
						_sub_index = targeting_array[cur_target_index + 1];
					}
				}
				pre_cid_id_sub = _sub_index;
			}
			else {
				pre_cid_id_sub = noone;
			}
			surface_free(surf);
			surface_free(surf_sub);
		}
	}
	else {
		reverse = true;
	}
}
if (reverse) {
	image_alpha = max(0, image_alpha - 0.02);
	anim_clock = max(0, anim_clock - 0.02);
	if (image_alpha <= 0) {
		instance_destroy();
	}
}
else {
	image_alpha = min(1, image_alpha + 0.02);
	anim_clock = min(1, anim_clock + 0.02);
}
x = xstart - 625 * animcurve_channel_evaluate(channel , anim_clock);