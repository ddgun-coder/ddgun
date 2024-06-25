image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
spin += 5;
image_angle = spin;
if (cid_id.skin == 3) {
	sprite_index =  spr_new_bwiza4;
}
y = cid_id.y + lengthdir_y(105 * cid_id.big_val,spin);
x = cid_id.x + lengthdir_x(105 * cid_id.big_val,spin);