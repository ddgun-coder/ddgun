if (c) {
	for (var i = 1; i <= 14; i++)
	{
		var obj_id = instance_create_depth(x + 64 * i, y, 0, arm_button1);
		with(obj_id)
		{
			self.number = i;
			self.c = false;
		}
	}
	c = false;
}