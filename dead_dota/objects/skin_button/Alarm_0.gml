/*
if (done == false) {
	for (var i = 1; i <= 14; i++)
	{
		var obj_id = instance_create_depth(x + 64 * i, y, 0, hat_button)
		with(obj_id)
		{
			done = true;
			self.number = i;
		}
	}
	done = true;
}