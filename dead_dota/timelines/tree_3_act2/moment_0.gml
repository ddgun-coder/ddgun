a_cooltime = 40;
var ok = true;
for (var i = 0; i < instance_number(tree_skill32); i++) {
	var temp_id = instance_find(tree_skill32, i);
	if (temp_id.cid == global.my_cid) {
		ok = false;
		break;
	}
}
if (ok) {
	server78_create_instace(tree_skill32, x, y);
}
else {
	skill_say_time = 30;
	skill_say = "하나 초과해서 소환 불가.";
}