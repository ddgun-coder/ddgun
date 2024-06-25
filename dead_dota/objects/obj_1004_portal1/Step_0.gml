if (distance_to_object(testing) < 1)
{
	if (keyboard_check_pressed(ord("f")) or keyboard_check(ord("F"))) {
	if (testing.sturn <= 0) {
		if (testing.stemina >= 75) {
			if (testing.a_a_cooltime < 0) {
				testing.stemina = 0
				testing.a_a_cooltime = 40;
				testing.x = xx;
				testing.y = yy;
			}
		}
		else {
			testing.chat6 = testing.chat5;
			testing.chat5 = testing.chat4;
			testing.chat4 = testing.chat3;
			testing.chat3 = testing.chat2;
			testing.chat2 = testing.chat1;
			testing.chat1 = "[ ' 스테미너가 필요하다 ' ]"
		}
	}
	}
}
image_angle += 5;