a_cooltime = 10;
if (instance_exists(obj_question_ui)) {
	var out = false;
	with(obj_question_ui) {
		if (!drop) {
			for (var i = 0; i < 4; i++) {
				if (x_array[i] == false and answer_index != i) {
					out = true;
					break;
				}
			}
		}
	}
	if (out) {
		with(obj_question_ui) {
			if (!drop) {
				var _rand = irandom(3);
				while !(_rand != answer_index and x_array[_rand] == false) {
					_rand = irandom(3);
				}
				x_array[_rand] = true;
			}
		}
	}
	else {
		server78_create_instace(obj_question_x, x, y);
	}
}
else {
	server78_create_instace(obj_question_x, x, y);	
}