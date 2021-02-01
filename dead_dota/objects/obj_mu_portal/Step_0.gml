if (distance_to_object(testing) < 30)
{
	if (keyboard_check_pressed(ord("f")) or keyboard_check(ord("F"))) {
		if (testing.mana > 50) {
			prt_val_add(Val.mp, -50);
			testing.x = obj_mu_portal1.x
			testing.y = obj_mu_portal1.y + 200;
		}
		else
		{
			testing.chat6 = testing.chat5;
			testing.chat5 = testing.chat4;
			testing.chat4 = testing.chat3;
			testing.chat3 = testing.chat2;
			testing.chat2 = testing.chat1;
			testing.chat1 = "마나가 읎어요.(50필요)"
		}
	}
}