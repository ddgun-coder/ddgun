x += lengthdir_x(speedd * cid_id.big_val, YA - 90);
y += lengthdir_y(speedd * cid_id.big_val, YA - 90);
image_angle = YA;
image_xscale = cid_id.big_val * (speedd * 0.01 + 1);
image_yscale = cid_id.big_val * (speedd * 0.01 + 1);
if (speedd > 0) {
	speedd = max(speedd * 0.9, 0);	
}