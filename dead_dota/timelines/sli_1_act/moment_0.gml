a_cooltime = 20;
switch(level) {
	case 4:
		level++;
	break;
	case 5:
		level++;
	break;
	case 6:
		level++;
	break;
	case 7:
		level = 4;
	break;
	default:
	chat1 = "레벨이 낮아서 사용할수 없다!"
	break;
}
server77_equal(serve_val.hat_frame, level, buffer_u8);