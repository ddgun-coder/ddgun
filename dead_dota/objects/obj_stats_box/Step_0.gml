if (room == room_out) {
	instance_destroy()
}
switch(global.stats) {
	case spr_stats1:
		image_index = 0;
		break;
	case spr_stats2:
		image_index = 1;
		break;
	case spr_stats3:
		image_index = 2;
		break;
	case spr_stats4:
		image_index = 3;
		break;
	case spr_stats5:
		image_index = 4;
		break;
	case spr_stats6:
		image_index = 5;
		break;
}
