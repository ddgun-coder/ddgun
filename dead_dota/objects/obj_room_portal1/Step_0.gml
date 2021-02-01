if (distance_to_object(testing) < 10)
{
	testing.mine_say = "개미굴로 가지는 포탈이다.."
	testing.mine_say_time = 100;
	if (keyboard_check(ord("f")) or keyboard_check(ord("F"))) {
		room_goto(room_ant);
	}
}