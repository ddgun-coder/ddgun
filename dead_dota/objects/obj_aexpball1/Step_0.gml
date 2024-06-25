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


if (!place_free(x, y)) {
	x += lengthdir_x(1, dir);
    y += lengthdir_y(1, dir);
}
