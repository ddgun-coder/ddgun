if (cid_id.skin == 3) {
	sprite_index =  spr_new_bwizad;
}
image_xscale = cid_id.big_val * 1.75;
image_yscale = cid_id.big_val * 1.5;
y = cid_id.y + lengthdir_y(300,cid_id.YA-90);
x = cid_id.x + lengthdir_x(300,cid_id.YA-90);
image_angle = cid_id.YA - 90;
