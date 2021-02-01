/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < 24; i++) {
	if (i != cid and i != global.my_cid_id) {
		if (place_meeting(x, y, global.cid_array[i])) {
			instance_destroy();
		}
	}
}
if (dis > 0) {
	dis--;	
}
x += lengthdir_x(dis, dir);
y += lengthdir_y(dis, dir);