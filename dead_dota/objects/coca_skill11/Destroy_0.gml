/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < instance_number(coca_skill41); i++) {
	var temp_id = instance_find(coca_skill41, i);
	if (temp_id.cid_id == cid_id) {
		instance_destroy(temp_id);
		var name = instance_create_depth(x, y, 200, fwiza_skill31);
		name.cid_id = cid_id;
		name.cid = cid;
		name.team = team;
	}
}