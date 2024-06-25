if(other.image_alpha = 1) {
	DMG(10, n_attack_area, 40)
	if (instance_number(pota_skill31) < 10) {
		var te = instance_create_depth(x, y, 0, pota_skill31);
		te.YA = other.YA;
	}
	else {
		instance_destroy(instance_find(pota_skill31, 0));
	}
	if (!instance_exists(pota_skill31)) {
		server202_sound(pota_3_sound)
	}
	if (other.team == global.team) {
		if (a_possible == true and a_cooltime <= 0) {
			normal_play(yellow_2_act);	
		}
	}
}