/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 08DBE038
/// @DnDArgument : "code" "for(i = 50; i > 0; i--) {$(13_10)	if(place_free(x + lengthdir_x(5 * i, YA - 90), y + lengthdir_y(5 * i, YA - 90)))$(13_10)	{$(13_10)		x += lengthdir_x(5 * i, YA - 90);$(13_10)		y += lengthdir_y(5 * i, YA - 90);$(13_10)		break;$(13_10)	}//앞으로 자동이동$(13_10)}"
for(i = 50; i > 0; i--) {
	if(place_free(x + lengthdir_x(5 * i, YA - 90), y + lengthdir_y(5 * i, YA - 90)))
	{
		x += lengthdir_x(5 * i, YA - 90);
		y += lengthdir_y(5 * i, YA - 90);
		break;
	}//앞으로 자동이동
}