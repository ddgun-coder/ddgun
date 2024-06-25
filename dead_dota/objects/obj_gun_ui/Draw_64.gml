
if (instance_exists(testing)) {
	if (testing.level >= 2) {
		if (global.hat == spr_hat71) {
			draw_self()
			image_index = testing.skill_con
		}
	}
}