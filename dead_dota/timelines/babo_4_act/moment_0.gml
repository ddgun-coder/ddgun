a_cooltime = 60;
if (instance_exists(obj_question_ui)) {
	var out = false;
	with(obj_question_ui) {
		if (!drop and question_result == noone) {
			is_skilled = true;
			out = true;
			alarm[0] = 1;
			break;
		}
		else {
			with (testing) {
				server78_create_instace(obj_babo_skill41, x, y);
			}
		}
	}
}
else {
	server78_create_instace(obj_babo_skill41, x, y);	
}