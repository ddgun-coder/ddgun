/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0AD4E871
/// @DnDArgument : "code" "x = cid_id.x;$(13_10)y = cid_id.y;$(13_10)draw_self();$(13_10)image_angle = cid_id.YA;$(13_10)image_xscale = cid_id.big_val * 1.8;$(13_10)image_yscale = cid_id.big_val * 0.8;$(13_10)if(cid_id.cancle_able == false or cid_id.sturn > 0) {$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)if (cid_id == global.my_cid_id) {$(13_10)for(var i = 0; i < 24; i++) {$(13_10)   if (i != cid and i != global.my_cid_id) {$(13_10)      if (place_meeting(x, y, global.cid_array[i])) {$(13_10)         if (global.cid_array[i].team != global.team) {$(13_10)             with(testing) {$(13_10)				 hp += 0.46$(13_10)             }$(13_10)		 }$(13_10)     }$(13_10) }$(13_10) }$(13_10)}"
x = cid_id.x;
y = cid_id.y;
draw_self();
image_angle = cid_id.YA;
image_xscale = cid_id.big_val * 1.8;
image_yscale = cid_id.big_val * 0.8;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}

if (cid_id == global.my_cid_id) {
for(var i = 0; i < 24; i++) {
   if (i != cid and i != global.my_cid_id) {
      if (place_meeting(x, y, global.cid_array[i])) {
         if (global.cid_array[i].team != global.team) {
             with(testing) {
				 hp += 0.46
             }
		 }
     }
 }
 }
}