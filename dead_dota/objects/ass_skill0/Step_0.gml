x = cid_id.x + lengthdir_x (30, cid_id.YA-90);
y = cid_id.y + lengthdir_y(30, cid_id.YA-90);
image_angle = cid_id.YA;
image_xscale = cid_id.big_val ;
image_yscale = cid_id.big_val;

if (global.my_cid != cid) exit

for(var i = 0; i < 24; i++) {
   if (i != cid and i != global.my_cid_id) {
      if (place_meeting(x, y, global.cid_array[i])) {
         if (global.cid_array[i].team != global.team) {
          if (global.cid_array[i].sturn <= 0) {
               with(testing) {
               switch(buff_index) {
                  case spr_gas:
				  case buff_timea:
                  case buff_mpkiller :
                  case buff_bwiza2 :
                  case buff_giligili :
                  case buff_noheal :
                  case buff_noitem :
                  case buff_bleed :
                  case buff_nin4 :
               
                  break;
                  default :
                     buff_index = global.cid_array[i].buff_index;
                     buff_time = 200;
                     server77_equal(serve_val.buff_index, buff_index, buffer_u16);
                  break;
               }
               }
            }
         }
      }
   }
}

if (cid_id.skin == 1) {
	sprite_index =  spr_blackass_attack0;
}
