/// @description Insert description here
// You can write your code in this editor
if (eat) {
	for(var i = 0; i < 24; i++) {
		if (i != cid and i != global.my_cid_id) {
			var temp_id = global.cid_array[i];
			if (temp_id.team == team) {
				if (place_meeting(x, y, temp_id)) {
					instance_destroy();
				}
			}
		}
	}
}