a_cooltime = 10;
if (instance_exists(obj_question_ui)) {
	obj_question_ui.drop = true;
	obj_question_ui.anim_clock = 0;
	obj_question_ui.curve = animcurve_get(ac_incre);
	obj_question_ui.channel = obj_question_ui.curve.channels[0];
	babo_time = 360;
	var i = instance_create_depth(global.window_width - 256, global.window_height / 2 - 100, depth, obj_question_ui);
	i.special = true;
}
else {
	babo_time = 80;
	var i = instance_create_depth(global.window_width - 256, global.window_height / 2 - 100, depth, obj_question_ui);
	i.special = true;
}