/// @description Insert description here
// You can write your code in this editor
if (back) {
	if (x_offset > 0) {
		x_offset -= 6;
	}
	else {
		instance_destroy();
	}
}
else {
	if (x_offset < 240) {
		x_offset += 6;	
	}
	else {
		if (alarm[0] == -1) alarm[0] = 100;
	}
}

x = xstart - x_offset;