var xx;
var yy;

while(true) {
	xx = irandom(room_width - 100);
	yy = irandom(room_height - 100);
	if(place_free(xx,yy)) {
		testing.x = xx;
		testing.y = yy;
		break;
	}
}