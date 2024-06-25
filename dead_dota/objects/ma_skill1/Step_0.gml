x += lengthdir_x(30, cid_id.YA - 90);
y += lengthdir_y(30, cid_id.YA - 90);
image_angle = cid_id.YA - 90;
if (cid_id.skin == 1) {
	sprite_index =  spr_snow_ma1;
}
image_xscale = cid_id.big_val * 1;
image_yscale = cid_id.big_val * 1;
if (!place_free(x, y)) {
   if (!place_meeting(x, y, cid_id)) {
      var name = instance_create_depth(x, y, 200, ma_skill12);
      name.cid_id = cid_id;
      name.cid = cid;
      name.team = team;
      instance_destroy();
   }
}