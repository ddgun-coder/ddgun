/// @description Insert description here
// You can write your code in this editor
image_angle = cid_id.YA;
for (var i = 0; i < instance_number(tree_skill12); i++) {
	var temp_id = instance_find(tree_skill12, i);
	if (temp_id.cid == cid) {
		x = temp_id.x;
		y = temp_id.y;
		instance_destroy(temp_id);
		break;
	}
}
if (cid_id.skin == 1) {
	sprite_index =  doll_tree1;
}