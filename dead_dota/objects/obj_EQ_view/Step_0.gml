if (room == room_main) {
	instance_destroy()
	exit;
}
if (testing.EQ = true and testing.sturn > 0)
{
	if (buff == true)
	{
		x = testing.x + random_range(-50, 50)
		y = testing.y + random_range(-50, 50)
		buff = false;
	}
	else
	{
		if (alarm[0] == -1)
		{
			alarm[0] = 4;
		}
	}
}
else
{
	x = testing.x
	y = testing.y
	buff = false;
}