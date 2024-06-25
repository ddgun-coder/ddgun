/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 618EB178
/// @DnDArgument : "code" "if (distance_to_object(testing) < 10)$(13_10){$(13_10)	testing.mine_say = "돌다리로 가지는 포탈이다.."$(13_10)	testing.mine_say_time = 100;$(13_10)	if (keyboard_check(ord("f")) or keyboard_check(ord("F"))) {$(13_10)		room_goto(room_play);$(13_10)	}$(13_10)}"
if (distance_to_object(testing) < 10)
{
	testing.mine_say = "돌다리로 가지는 포탈이다.."
	testing.mine_say_time = 100;
	if (keyboard_check(ord("f")) or keyboard_check(ord("F"))) {
		room_goto(room_play);
	}
}