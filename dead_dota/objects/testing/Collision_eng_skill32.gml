if (other.effect = false) {
	if (other.team == global.team) {
		prt_val_add(Val.mp, 20);
		instance_destroy(other.id);
	}
}