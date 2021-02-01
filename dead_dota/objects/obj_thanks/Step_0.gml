/// @description Insert description here
// You can write your code in this editor
if (!place_free(x, y)) {
	switch(state) {
		case 0:	
			x += 32;
		break;
		case 1:	
			x -= 32;
		break;
		case 2:	
			y += 32;
		break;
		case 3:	
			y -= 32;
		break;
	}
}
else {
	state = 4;	
}