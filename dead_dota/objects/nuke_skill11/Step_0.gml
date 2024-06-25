image_xscale = cid_id.big_val * bigg;
image_yscale = cid_id.big_val * bigg;
image_angle = cid_id.YA;
x = cid_id.x;
y = cid_id.y;
bigg -= 0.2
image_alpha -= 0.1


if (cid_id == global.my_cid_id) {
for(var i = 0; i < 24; i++) {
   if (i != cid and i != global.my_cid_id) {
      if (place_meeting(x, y, global.cid_array[i])) {
         if (global.cid_array[i].team != global.team) {
             with(testing) {
				 if(big_val <= 2.4) {
					go_to_scale += 0.02;
				    big_val += 0.02
					big_val_time = 160
				 }
             }
		 }
     }
 }
 }
}
