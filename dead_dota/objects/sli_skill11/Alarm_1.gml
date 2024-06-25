/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 4; i++) {
	var name = instance_create_depth(x + lengthdir_x(45 * cid_id.big_val, 90 * i), y + lengthdir_y(45 * cid_id.big_val, 90 * i), 200, pota_skill21);
	name.cid_id = cid_id;
	name.cid = cid;
	name.team = team;
	name.image_angle = i * 90;
}
image_xscale = cid_id.big_val * 2;
image_yscale = cid_id.big_val * 2;