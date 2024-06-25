function room_pass(_str) {
	var _temp = asset_get_index(_str);
	var ban_map = [room_in, room_out, room_tuto, room_main, room_loading];
	var num = array_length(ban_map);
	for (var i = 0; i < num; i++) {
		if (_temp == ban_map) {
			_temp = room_rock_bridge;
			break;
		}
	}
	if (_temp == -1) _temp = room_rock_bridge;
	if (_temp != room) {	
		room_goto(_temp);
	}
}
