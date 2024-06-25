x += lengthdir_x(30 * cid_id.big_val, YA - 90);
y += lengthdir_y(30 * cid_id.big_val, YA - 90);
image_angle = YA;
if (cid_id.skin == 1) {
	sprite_index =  spr_dd_bwiza2;
}
if (cid_id.skin == 3) {
	sprite_index =  spr_new_bwiza2;
}
image_xscale = cid_id.big_val * 1.8;
image_yscale = cid_id.big_val * 1.8;
time ++
dmg = min(12 + other.time, 25)