function room_pass(argument0) {
	switch(argument0) {
		case ROOM.rock_britge:
			if (room != room_rock_bridge) {
				room_goto(room_rock_bridge);
			}
			break;
		case ROOM.ant:
			if (room != room_ant) {
				room_goto(room_ant);
			}
			break;
		case ROOM.forest:
			if (room != room_night_forest) {
				room_goto(room_night_forest);
			}
			break;
		case ROOM.kazino:
			if (room != room_kazino) {
				room_goto(room_kazino);
			}
			break;
		case ROOM.study:
			if (room != room_study) {
				room_goto(room_study);
			}
			break;
		case ROOM.racing:
			if (room != room_racing) {
				room_goto(room_racing);
			}
			break;
		case ROOM.mu:
			if (room != room_mu) {
				room_goto(room_mu);
			}
			break;
		case ROOM.sward:
			if (room != room_sward) {
				room_goto(room_sward);
			}
			break;
		case ROOM.under:
			if (room != room_under) {
				room_goto(room_under);
			}
			break;
		case ROOM.hos:
			if (room != room_hos1) {
				room_goto(room_hos1);
			}
			break;
		case ROOM.bol:
			if (room != room_bolguang) {
				room_goto(room_bolguang);
			}
		break;
		case ROOM.hell:
			if (room != room_hell) {
				room_goto(room_hell);
			}
		break;
		case ROOM.arena:
			if (room != room_gaybar) {
				room_goto(room_gaybar);
			}
		break;
		case ROOM.drangon:
			if (room != room_what) {
				room_goto(room_what);
			}
		break;
		case ROOM.sea:
			if (room != room_sea2) {
				room_goto(room_sea2);
			}
		break;
		case ROOM.soccer:
			if (room != room_soccer) {
				room_goto(room_soccer);
			}
		break;
		case ROOM.sky:
			if (room != room_flower) {
				room_goto(room_flower);
			}
		break;
		case ROOM.r1004:
			if (room != room_1004) {
				room_goto(room_1004);
			}
		break;
		case ROOM.ball:
		if (room != room_spin) {
				room_goto(room_spin);
			}
		break;
		case ROOM.last:
		if (room != room_l) {
				room_goto(room_l);
			}
		break;
		case ROOM.ufo:
		if (room != room_UFO) {
				room_goto(room_UFO);
			}
		break;
		case ROOM.dragon_sward:
		if (room != room_dragon_sward) {
				room_goto(room_dragon_sward);
			}
		break;
		case ROOM.rock_cave:
		if (room != room_rockcave) {
				room_goto(room_rockcave);
			}
		break;
		case ROOM.test:
		if (room != room_ball_test) {
				room_goto(room_ball_test);
			}
		break;
	}
	/*
	if (room != room_mak) {
		room_goto(room_mak);
	}
	*/
}
