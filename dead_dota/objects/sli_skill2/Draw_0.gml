draw_self()
    if (time > 0) {
	    var size = array_length(surface_array)
	    for (var i =0; i < size; i++) {
		    var index = size - i - 1;
		    draw_surface_ext(surface_array[index], x_array[index] , y_array[index] , 1, 1, YA, c_white, (index + 1) / size * 0.7)
	    }
    }
