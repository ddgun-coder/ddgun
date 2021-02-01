if (room == room_out) {
	instance_destroy(self);
	instance_destroy(score_1_team);
	instance_destroy(score_0_team);
	exit;
}