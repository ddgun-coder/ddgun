if (room == room_main) {
	instance_destroy()
	exit;
}
if (instance_exists(testing)) {
	if (tele = true)
	{
		x = testing.x + lengthdir_x(go_to, testing.YA - 90)
		y = testing.y + lengthdir_y(go_to, testing.YA - 90)
		if (go_to < go_pixel * testing.big_val) {
			go_to += 20;
		}
		else {
			if (go_to - 10 > go_pixel * testing.big_val) {
				go_to -= 6;
			}
		}
	}
	else
	{
		x = testing.x
		y = testing.y
		go_to = 0;
	}

	if (tele_ssg = true)
	{
		x = testing.x + lengthdir_x(-600, testing.YA - 90)
		y = testing.y + lengthdir_y(-600, testing.YA - 90)
	}
	else
	{
		if (tele = false)
		{
			x = testing.x
			y = testing.y
		}
	}
}