x += lengthdir_x(25 - delta * cid_id.big_val, YA - 90);
y += lengthdir_y(25 - delta * cid_id.big_val, YA - 90);
image_angle = YA;
image_xscale = cid_id.big_val * 1;
image_yscale = cid_id.big_val * 1;

if (delta < 24) {
    delta += 1.2
	image_alpha += 0.08
}