DMG(20, n_attack_area, 20);
if (global.team != other.team) {
	if (instance_number(pota_skill31_back) < 10) {
		var te = instance_create_depth(x, y, 0, pota_skill31_back);
		te.YA = YA + 180;
	}
	else {
		instance_destroy(instance_find(pota_skill31_back, 0));
	}
}