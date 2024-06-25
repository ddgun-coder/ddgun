/// @description Insert description here
// You can write your code in this editor
if(sturn_attack = true) {
	if(cid_id.sturn > 0) {
		var ida = instance_create_depth(x, y, -100, obj_food);
			ida.team = team;
			ida.cid = cid;
			ida.cid_id = cid_id;
			instance_destroy();
	}
}
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}