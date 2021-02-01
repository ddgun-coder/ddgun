if (other.team != global.team) {
	DMG_buff_e(buff_see2, 160);
}
else {
	if (other.cid != global.my_cid) {
		heal_server(0.4);
	}
}