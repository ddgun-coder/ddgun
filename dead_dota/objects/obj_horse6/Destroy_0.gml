/// @description Insert description here
// You can write your code in this editor
if (cid_id == global.my_cid_id) {
	testing.a_cooltime = 0;
	testing.moveable = true;
	testing.extra_speed = 0;
	testing.a_possible = true;
	testing.go_to_speed = 0;
	testing.terror_charge = 0;
}

var name = instance_create_depth(x + lengthdir_x(45 * cid_id.big_val, 90), y + lengthdir_y(45 * cid_id.big_val, 90), 200, mine_skill32);
name.cid_id = cid_id;
name.cid = cid;
name.team = team;