/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 11AC1FF7
/// @DnDArgument : "code" "if (testing.open_key1 == true and distance_to_object(testing) < 10)$(13_10){$(13_10)	if (keyboard_check_pressed(ord("f")) or keyboard_check_pressed(ord("F")))$(13_10)	{$(13_10)		testing.open_key1 = false;$(13_10)		testing.mine_say_time = 200;$(13_10)		testing.mine_say = "벽이 없어졌다?";$(13_10)		instance_destroy()$(13_10)	}$(13_10)}"
if (testing.open_key1 == true and distance_to_object(testing) < 10)
{
	if (keyboard_check_pressed(ord("f")) or keyboard_check_pressed(ord("F")))
	{
		testing.open_key1 = false;
		testing.mine_say_time = 200;
		testing.mine_say = "벽이 없어졌다?";
		instance_destroy()
	}
}