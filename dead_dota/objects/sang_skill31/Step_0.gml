if (my_speed != 0) {
   x += lengthdir_x(my_speed, YA - 90);
   y += lengthdir_y(my_speed, YA - 90);
   for (var i = 0; i < 24; i++) {
      var idd = global.cid_array[i];
      if (idd == cid_id) continue;
      if (place_meeting(x, y, idd)) {
         stuck_id = idd;
         my_speed = 0;
         delta_YA = idd.YA - YA;
         break;
      }
   }
   if (!place_free(x, y)) {
      if (!place_meeting(x, y, cid_id)) {
         my_speed = 0;
      }
   }
}
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;

if (stuck_id != noone) {
   image_angle = stuck_id.YA - delta_YA;
   x = stuck_id.x + lengthdir_x(-(64 + 11 * stuck_id.big_val) * image_xscale, image_angle - 90);
   y = stuck_id.y + lengthdir_y(-(64 + 11 * stuck_id.big_val) * image_yscale, image_angle - 90);
}

if(cid_id.hat = spr_hat64) {
	if(cid_id.d_attack_type != spr_sangbow) {
		var name = instance_create_depth(x, y, 200, sang_boom);
		name.cid_id = cid_id;
		name.cid = cid;
		name.team = team;
		instance_destroy();
	}
}
	

