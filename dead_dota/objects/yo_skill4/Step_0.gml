if (to_testing = false) {
	x += lengthdir_x(dis, YA - 90);
	y += lengthdir_y(dis, YA - 90);
	image_angle +=	18;
}
else {
	x += lengthdir_x(20, go_to );
	y += lengthdir_y(20, go_to );
	go_to =  point_direction(x, y, cid_id.x, cid_id.y) 
	image_angle +=	18;
	
}	
	
	
if (final_effect = false) {
	if(dis > 0) {
		dis -= 0.5;
	}
}
else {
	image_alpha -= 0.06
}


image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;


 for (var i = 0; i < 24; i++) {
      var idd = global.cid_array[i];
      if (idd != cid_id) continue;
	  if(to_testing = true) {
		if(end_effect = true) {
			if (place_meeting(x, y, idd)) {
				alarm[2] = 1
			}
		 }
	  }
   }