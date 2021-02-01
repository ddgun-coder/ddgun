x = xstart + camera_get_view_x(view_camera[view_current])
y = ystart + camera_get_view_y(view_camera[view_current])
if (room == room_out) {
	instance_destroy()
}
if (room != room_main) {
	for (i = 0; i < MAX_ITME_BOX; ++i)
	{
		if (global.item_time[i] < global.item_time_max[i] and global.item[i] != spr_none)
		{
			switch(global.hat) {
				case spr_hat62:
					global.item_time[i] += 0.1;
				break;
				case spr_hat21 :
					global.item_time[i] += 1.2;
				break;
				default :
					global.item_time[i] += 1;	
				break;
			}
		}
	}
}