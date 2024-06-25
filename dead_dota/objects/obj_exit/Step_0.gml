if (room == room_main) {
	global.online = 0;
	network_destroy(global.client);
	instance_destroy()
	exit;
}
depth = -1000;