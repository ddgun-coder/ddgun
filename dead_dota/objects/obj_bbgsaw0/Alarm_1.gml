/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 4; i++) {
	var name = instance_create_depth(x + lengthdir_x(65 * cid_id.big_val, 90 * i), y + lengthdir_y(65 * cid_id.big_val, 90 * i), 200, die_skill3_2);
	name.cid_id = cid_id;
	name.cid = cid;
	name.team = team;
}