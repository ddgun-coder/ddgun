if (instance_exists(stats6_skill)) {
	with(stats6_skill) {
		if (cid_id == other.cid_id) {
			instance_destroy();
		}
	}
}
instance_destroy();