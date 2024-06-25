if (room == room_out) {
	instance_destroy()
}
if (room != room_main) {
	for (var i = 0; i < MAX_ITME_BOX; ++i)
	{
		if (global.item[i] != spr_none) {
			var struct = shop_button1.item[global.item[i]];
			if (global.item_time[i] < struct.max_time)
			{
				switch(global.hat) {
					default :
						global.item_time[i] += 1;	
					break;
				}
			}
		}
	}
}