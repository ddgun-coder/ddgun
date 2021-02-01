/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 20007721
/// @DnDArgument : "code" "testing.YA = cid_id.YA;$(13_10)with (testing) {$(13_10)	if(place_free(x + lengthdir_x(20, YA - 90), y + lengthdir_y(20, YA - 90)))$(13_10)	{$(13_10)		x += lengthdir_x(20, YA - 90);$(13_10)		y += lengthdir_y(20, YA - 90);$(13_10)	}//앞으로 자동이동$(13_10)}$(13_10)alarm[1] = 2;"
testing.YA = cid_id.YA;
with (testing) {
	if(place_free(x + lengthdir_x(20, YA - 90), y + lengthdir_y(20, YA - 90)))
	{
		x += lengthdir_x(20, YA - 90);
		y += lengthdir_y(20, YA - 90);
	}//앞으로 자동이동
}
alarm[1] = 2;