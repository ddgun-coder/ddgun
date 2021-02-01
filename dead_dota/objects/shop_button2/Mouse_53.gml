if (mouse_x > x - 32 and mouse_x < x + 64 * 8 + 32 and mouse_y > y - 32 and mouse_y < y + 64 * (mj - 1) + 32) {
	if (shop_UI.windows_index == 1 and shop_UI.windows == true)
	{
		var w = floor((mouse_x + 32 - x) / 64);
		var h = floor((mouse_y + 32 - y) / 64);
		var number = h * 9 + w;
		if (global.pickaxe_exist[number] = false)
		{
			if (global.money >= item[number].price)
			{
				global.pickaxe_exist[number] = true;
				prt_val_add(0, -item[number].price);
				audio_play_sound(buy_item, 1, false);
			}
			else
			{
				testing.mine_say = "돈이 없다."
				testing.mine_say_time = 200;
			}
		}
		else
		{
			testing.mine_say = "이미 샀는데?"
			testing.mine_say_time = 200;
		}
	}
}