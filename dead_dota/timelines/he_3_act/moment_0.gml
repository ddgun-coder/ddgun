a_cooltime = 10;
server78_create_instace(he_skill1, x, y);
if (cur_attack >= 0) {
	var obj = asset_get_index("testing" + string(cur_attack));
	if (cur_attack != 0) {
		if (obj.x > 0 and obj.y > 0) { 
			x = obj.x + irandom(30);
			y = obj.y + irandom(30);
		}
	}
}