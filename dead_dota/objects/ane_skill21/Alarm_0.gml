/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < instance_number(ane_skill2); i++) {
	var temp_id = instance_find(ane_skill2, i);
	if(temp_id.cid == cid) {
		temp_id.move = true;
		break;
	}
}
instance_destroy();