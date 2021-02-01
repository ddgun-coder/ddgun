function random_xy() {
	var xx;
	var yy;
	while(true) {
		xx = irandom(room_width - 100) + 50;
		yy = irandom(room_height - 100) + 50;
		if(place_free(xx,yy)) {
			if (!place_meeting(xx, yy, only_first)){
				testing.x = xx;
				testing.y = yy;
				break;
			}
		}
	}


}
