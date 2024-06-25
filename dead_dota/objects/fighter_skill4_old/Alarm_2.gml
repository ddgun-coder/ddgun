/// @description Insert description here
// You can write your code in this editor
var xx;
var yy;
for (var i = 0; i < array_num; i++) {
	while(true) {
		xx = irandom(room_width - 100) + 50;
		yy = irandom(room_height - 100) + 50;
		if(place_free(xx,yy)) {
			if (!place_meeting(xx, yy, only_first)){
				random_x_array[i] = xx;
				random_y_array[i] = yy;
				break;
			}
		}
	}		
}