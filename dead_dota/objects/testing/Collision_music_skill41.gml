DMG(49, n_attack_area, 40)
if (instance_number(pota_skill31) < 10) {
	var te = instance_create_depth(x, y, 0, pota_skill31);
	te.YA = other.YA;
}