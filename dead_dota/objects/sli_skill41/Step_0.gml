x = cid_id.x + lengthdir_x(0,cid_id.YA-90)
y = cid_id.y + lengthdir_y(0,cid_id.YA-90)
image_xscale = cid_id.big_val * 3;
image_yscale = cid_id.big_val * 3;
image_angle = cid_id.YA + spin

if (turn = false) {
    if (spin > -60) {
        spin -= 6
    }
	else {
		 spin -= 0.1
	}
		
}

if (image_alpha < 0.9) {
	image_alpha += 0.06
}

if( cid_id.sturn > 0) {
	instance_destroy();
}

if (cid_id.skin == 1) {
	sprite_index =  spr_Usli_skill4;
}