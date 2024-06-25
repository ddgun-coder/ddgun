x += lengthdir_x(25 * cid_id.big_val, YA - (140 + a));
y += lengthdir_y(25 * cid_id.big_val, YA - (140 + a));
spin += 10;
image_angle = cid_id.YA + spin;;

if (turn = false) {
    if (a < 60) {
        a -= 5	
    }
	else {
	    turn = true
    }
}

if(time > 0) {
		var surface = surface_create(150, 150);
		surface_set_target(surface);
		draw_sprite(sprite_index,image_index, 0, 0);
		surface_reset_target();
		var size = array_length(surface_array)
		if (size < ARRAY_SIZE) {
			array_push(surface_array, surface);
			x_array[size] = x;
			y_array[size] = y;
		}
		else {
			surface_free(surface_array[0]);
			    for (var i = 0; i <  ARRAY_SIZE - 1; i++) {
				    surface_array[i] = surface_array[i + 1]
					x_array[i] = x_array[i + 1];
			        y_array[i] = y_array[i + 1];
			    }
			surface_array[ARRAY_SIZE - 1] = surface;
			x_array[ARRAY_SIZE -1] = x;
			y_array[ARRAY_SIZE -1] = y;
		    }
			time --;
		}
		
		if (cid_id.skin == 1) {
			image_index =  5
		}