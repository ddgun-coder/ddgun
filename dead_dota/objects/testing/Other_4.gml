camera_set_view_border(view_camera[3], 1024, 768);
if (instance_exists(obj_start_here)) {
	x = obj_start_here.x + irandom_range(-150, 150);
	y = obj_start_here.y + irandom_range(-150, 150);
}
else {
	switch(room) {
		case room_arena :
			if!(global.team) {
				testing.x = 988 + irandom_range(-50, 50);
				testing.y = 2147 + irandom_range(-50, 50);
			}
			else {
				testing.x = 3261 + irandom_range(-50, 50);
				testing.y = 2144 + irandom_range(-50, 50);
			}
		break;
		case room_rockcave :
			if (global.team) {
				x = team_1_heal_zone.x + random(team_1_heal_zone.sprite_width);
				y = team_1_heal_zone.y + random(team_1_heal_zone.sprite_height);
			}
			else {
				x = team_0_heal_zone.x + random(team_0_heal_zone.sprite_width);
				y = team_0_heal_zone.y + random(team_0_heal_zone.sprite_height);
			}
		break;
		default :
			var xx;
			var yy;

			while(true) {
				xx = irandom(room_width - 100);
				yy = irandom(room_height - 100);
				if(place_free(xx,yy)) {
					testing.x = xx;
					testing.y = yy;
					break;
				}
			}	
		break;
	}
}
if (room == room_main) {
	instance_destroy()	
}
if (room == room_ball) {
	global.team = 2;
}
if (global.BGM) {
	BMG_play()
}
a_possible = true;
terror_charge = 0;
no_change = false;