x = cid_id.x;
y = cid_id.y;
draw_self();
image_angle = cid_id.YA;
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}

if(testing.gi < 0) {
    instance_destroy()
}

if (cid_id.skin == 1) {
	sprite_index =  spr_holybam;
}

if (cid_id != global.my_cid_id) exit;

if (touched_id == noone) {
   for (var i = 1; i < 24; i++) {
      if (i != global.my_cid_id) {
         var idd = global.cid_array[i]
         if (place_meeting(x, y, idd)) {
            if (idd.team != global.team) {
               angle = point_direction(testing.x, testing.y, idd.x, idd.y)- idd.YA; ;
               touched_id = idd;
            }
         }
      }
   }
}
else {
   testing.x = touched_id.x + lengthdir_x(-48, touched_id.YA + angle);
   testing.y = touched_id.y + lengthdir_y(-48, touched_id.YA + angle);
   testing.YA = point_direction(testing.x, testing.y,  touched_id.x ,touched_id.y) + 90;
}

for(var i = 0; i < 24; i++) {
   if (i != cid and i != global.my_cid_id) {
      if (place_meeting(x, y, global.cid_array[i])) {
         if (global.cid_array[i].team != global.team) {
			 if (cid_id.live != 1) {
				with(testing) {
					prt_val_add(Val.mp, 1);
				}
             }
		 }
     }
 }
}