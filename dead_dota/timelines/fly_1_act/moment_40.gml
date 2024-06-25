a_cooltime = 40;
a_possible = true;

var xx;
var yy;

while(true) {
	xx = irandom(room_width - 100) + 50;
	yy = irandom(room_height - 100) + 50;
	if(place_free(xx,yy)) {
		testing.x = xx;
		testing.y = yy;
		break;
	}
}

/*
if (YA == 90) {
	if (instance_exists(team_1_heal_zone)) {
		x = team_1_heal_zone.x + random(team_1_heal_zone.sprite_width);
		y = team_1_heal_zone.y + random(team_1_heal_zone.sprite_height);
	}
}
if (YA == 270) {
	if (instance_exists(team_0_heal_zone)) {
		x = team_0_heal_zone.x + random(team_0_heal_zone.sprite_width);
		y = team_0_heal_zone.y + random(team_0_heal_zone.sprite_height);
	}
}
if (YA != 90 and YA != 270) {
	if (instance_exists(all_heal_zone)) {
		x = all_heal_zone.x ++ random(all_heal_zone.sprite_width);
		y = all_heal_zone.y + random(all_heal_zone.sprite_height);
	}
}