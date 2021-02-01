if (distance_to_object(testing) < 1)
{
	if (keyboard_check_pressed(ord("f")) or keyboard_check(ord("F"))) {
		if (testing.gi > 100) {
			if (testing.a_a_cooltime < 0) {
				prt_val_add(Val.gi, -100);
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
			testing.chat1 = "GP가 읎어요.(100필요)"
		}
	}
}