/// @description Insert description here
// You can write your code in this editor
for (var i = 1; i < 24; i++) {
	if (i != global.my_cid_id) {
		if (place_meeting(x, y, global.cid_array[i])) {
			instance_destroy();
		}
	}
}