if (cid_id == global.my_cid_id) {
	var rand = irandom(array_num - 1);
	testing.YA = irandom(360);
	var len = irandom(10)
	testing.x = random_x_array[rand] + lengthdir_x(len, rand);
	testing.y = random_y_array[rand] + lengthdir_y(len, rand);
}
alarm[1] = 2;