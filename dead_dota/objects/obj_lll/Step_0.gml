/// @description Insert description here
// You can write your code in this editor
with(testing) {
	if (global.team) {
		if (place_free(x - 15, y)) {
			 x -= 15;
		}
	}
	else {
		if (place_free(x + 15, y)) {
			 x += 15;
		}
	}
	
}