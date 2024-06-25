if (distance_to_object(testing) < 10)
{
	testing.mine_say = "오늘 나온 맵은 뭐지?"
	testing.mine_say_time = 100;
	if (keyboard_check(ord("f")) or keyboard_check(ord("F"))) {
		room_goto(room_study);
	}
}