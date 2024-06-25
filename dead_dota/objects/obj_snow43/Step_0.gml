if(shake_it = true) {
	x += lengthdir_x(ddr, YA - 90)
}
else {
	if(ddr <= 7) {
		y += lengthdir_y(40, YA - 90);
		ddr++
	}
	else {
		solid = true
		image_index = 1
		if (attack = false) {
			alarm[5] = 1
		}
	}
}

image_alpha += 0.05
