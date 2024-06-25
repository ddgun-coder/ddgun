/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 6; i++) {
	var t = instance_create_depth(x + lengthdir_x(50 * big_val, YA - 90) + lengthdir_x((-110 + i * 50) * big_val, YA), y + lengthdir_y(35 * big_val, YA - 90) + lengthdir_y((-110 + i * 50) * big_val, YA), depth, gun_skill41);
	t.YA = cid_id.YA;
	t.cid = cid;
	t.cid_id = cid_id;
	t.team = team;
}
alarm[1] = 80;