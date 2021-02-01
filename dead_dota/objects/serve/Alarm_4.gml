if (room == room_soccer) {
	if (global.team) {
		testing.x = team_1_heal_zone.x + random(team_1_heal_zone.sprite_width);
		testing.y = team_1_heal_zone.y + random(team_1_heal_zone.sprite_height);
	}
	else {
		testing.x = team_0_heal_zone.x + random(team_0_heal_zone.sprite_width);
		testing.y = team_0_heal_zone.y + random(team_0_heal_zone.sprite_height);
	}
	instance_create_depth(x, y, -500, object359);
}