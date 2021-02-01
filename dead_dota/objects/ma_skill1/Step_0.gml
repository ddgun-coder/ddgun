x += lengthdir_x(30, cid_id.YA - 90);
y += lengthdir_y(30, cid_id.YA - 90);
image_angle = cid_id.YA - 90;
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
if (!place_free(x, y)) {
	var name = instance_create_depth(x, y, 200, ma_skill12);
	name.cid_id = cid_id;
	name.cid = cid;
	name.team = team;
	instance_destroy();
}