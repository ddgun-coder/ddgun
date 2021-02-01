x += lengthdir_x(30, image_angle - 90);
y += lengthdir_y(30, image_angle - 90);
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
if (!place_free(x, y)) {
	var name = instance_create_depth(x, y, 200, sea_skill31);
	name.cid_id = cid_id;
	name.cid = cid;
	name.team = team;
	instance_destroy();
}