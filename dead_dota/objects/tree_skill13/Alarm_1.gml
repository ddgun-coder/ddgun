/// @description Insert description here
// You can write your code in this editor
var ex = false;
for (var i = 0; i < instance_number(tree_skill12); i++) {
	var temp_id = instance_find(tree_skill12, i);
	if (temp_id.cid == cid) {
		temp_id.x = x;
		temp_id.y = y;
		ex = true;
		break;
	}
}
if (!ex) {
	var ida = instance_create_depth(x, y, -100, tree_skill12);
	ida.team = team;
	ida.cid = cid;
	ida.cid_id = cid_id;
}
instance_destroy();