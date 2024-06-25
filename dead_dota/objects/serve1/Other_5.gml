if (room == room_out) {
	//network_destroy(server);
	instance_destroy(self);
	instance_destroy(score_1_team);
	instance_destroy(score_0_team);
	exit;
}