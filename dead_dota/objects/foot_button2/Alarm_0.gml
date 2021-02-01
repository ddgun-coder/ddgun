if (c) {
	for (var i = 1; i <= 4; i++)
	{
		var obj_id = instance_create_depth(x + 64 * i, y, 0, foot_button2);
		with(obj_id)
		{
			self.number = i;
			self.c = false;
		}
	}
	c = false;
}