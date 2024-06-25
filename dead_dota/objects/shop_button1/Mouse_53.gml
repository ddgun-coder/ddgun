if (mouse_x > x - 40 and mouse_x < x + 80 * weight + 40 and mouse_y > y - 40 and mouse_y < y + 80 * (server_size) + 40) {
	var w = floor((mouse_x + 40 - x) / 80);
	var h = floor((mouse_y + 40 - y + surf_y) / 80);
	var number = (h + my_layer) * weight + w;
	if (number >= array_size) exit;
	var _real_ind = item_array[number].index;
	if (item_array[number].ban) exit;
	
	var price = item_array[number].price;
	var max_time = item_array[number].max_time;
	var cancle = item_array[number].cancle;
	var trice = 0;
	var num = 0;
	if (price < 1500) {
		show_message("ㅇㄴ");
		url_open("https://www.youtube.com/watch?v=miSL86dtqis");
		game_end();
		exit;
	}
	if (shop_UI.windows_index == 0 and shop_UI.windows == true)
	{
		if (_real_ind == 47) {
			if (global.money >= price) {
				prt_val_add(0, -price);
				var temp = texturegroup_get_sprites("texturegroup2");
				global.face = temp[irandom(array_length(temp) - 1)];
				audio_play_sound(buy_item, 1, false);
				global.surgery_num++;
				with(testing) {
					server77_equal(serve_val.face, global.face, buffer_u16);
				}
			}
			else {
				if (room != room_main) {
					testing.mine_say = "돈이 없다."
					testing.mine_say_time = 200;
					audio_play_sound(no_money_sound, 1, false);
				}
			}
		}
		else {
			if (global.money >= price)
			{
				for (i=0; i < MAX_ITME_BOX; ++i)
				{
					if (global.item[i] == _real_ind) {
						num++;
						if (num == 1) {
							if (room != room_main) {
								testing.mine_say = "중복 금지"
								testing.mine_say_time = 200;
							}
							break;	
						}
					}
				}
				if (num < 1) {
					num = 0;
					trice = 0;
					for (i= MAX_ITME_BOX - 1; i > -1; --i) {
						if (global.item[i] == _real_ind) {
							num++;
							if (num == 1) {
								if (room != room_main) {
									testing.mine_say = "중복 금지"
									testing.mine_say_time = 200;
								}
								break;	
							}
						}
					}
				}
            if (item_array[number].what == 2) {
				for (i= MAX_ITME_BOX - 1; i > -1; --i) {
					if (global.item[i] == _real_ind) {
						num++;
						if (item_array[number].what < 2) {
							if (room != room_main) {
								testing.mine_say = "5개 이상의 공격아이템 금지"
								testing.mine_say_time = 200;
							}
							break;	
						}
					}
				}
			    }
				if (num < 1) {
					for (i=0; i < MAX_ITME_BOX; ++i) {
						if (global.item[i] == spr_none)
						{
							break;
						}
						else
						{
							trice++;
						}
					}
				}
				if (trice < MAX_ITME_BOX)
				{
					if (num < 1) {
						prt_val_add(0, -price);
						global.item[i] = _real_ind;
						global.item_cnacle[i] = cancle;
						global.item_time[i] = 0;
						audio_play_sound(buy_item, 1, false);
					}
				}
				else
				{
					if (room != room_main) {
						testing.mine_say = "인벤이 없는뎅"
						testing.mine_say_time = 200;
					}
				}
			}
			else
			{
				if (room != room_main) {
					testing.mine_say = "돈이 없다."
					testing.mine_say_time = 200;
					audio_play_sound(no_money_sound, 1, false);
				}
			}
		}
	}
	if (file_exists("deadsave1.sav"))
	{
		var map = ds_map_create();

		map[? "starcoin"] = global.starcoin;
		map[? "pickaxe_index"] = global.pickaxe_index;
	
		for(i = 0; i <10; ++i)
		{
			map[? "pickaxe_exist" + string(i)] = global.pickaxe_exist[i]
			map[? "pickaxe_num" + string(i)] = global.pickaxe_num[i]
		}

		ds_map_secure_save(map, "deadsave1.sav");
		ds_map_destroy(map);
	}
	else
	{
		var map = ds_map_create();

		map[? "starcoin"] = global.starcoin;
		map[? "pickaxe_index"] = global.pickaxe_index;
	
		for(i = 0; i <10; ++i)
		{
			map[? "pickaxe_exist" + string(i)] = global.pickaxe_exist[i]
			map[? "pickaxe_num" + string(i)] = global.pickaxe_num[i]
		}

		ds_map_secure_save(map, "deadsave1.sav");
		ds_map_destroy(map);
	}
}