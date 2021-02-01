/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < 10; i++) {
	var name = instance_create_depth(x + lengthdir_x(35 * cid_id.big_val, i * 36), y + lengthdir_y(35 * cid_id.big_val, i * 36), 200, mine_skill211);
	name.image_angle = i * 36;
	name.cid_id = cid_id;
	name.cid = cid;
	name.team = team;
}
instance_destroy();