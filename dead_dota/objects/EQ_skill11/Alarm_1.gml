/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 9; i++) {
	var name = instance_create_depth(x + lengthdir_x(500 * cid_id.big_val, i * 40), y + lengthdir_y(500 * cid_id.big_val, i * 40), 200, sea_skill43);
	name.cid_id = cid_id;
	name.cid = cid;
	name.team = team;
	name.YA = i * 40 - 90;
}