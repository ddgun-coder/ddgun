/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2A4E691B
/// @DnDArgument : "code" "for (var i = 1; i < 15; i++)$(13_10){$(13_10)	var obj_id = instance_create_depth(x + 64 * i, y, 0, face_button2);$(13_10)	with(obj_id)$(13_10)	{$(13_10)		self.number = i;$(13_10)	}$(13_10)}"
for (var i = 1; i < 15; i++)
{
	var obj_id = instance_create_depth(x + 64 * i, y, 0, face_button2);
	with(obj_id)
	{
		self.number = i;
	}
}