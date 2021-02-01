function BMG_play() {
	if (global.hat == spr_level5_hat1) {
		audio_play_sound(gay_sound,1,true);
	}
	else {
		switch(room) {
			case room_rock_bridge:
			case room_mu:
			case room_spin:
				audio_play_sound(rook_britge,1,true);
			break;
			case room_ball:
			case room_ball_test:
				audio_play_sound(my_friend_rip,1,true);
			break;
			case room_ant:
			case room_study:
				audio_play_sound(FID,1,true);
			break;
			case room_night_forest:
			case room_mak:
				audio_play_sound(dota_song,1,true);
			break;
			case room_dragon_sward:
				audio_play_sound(sound_e_sward,1,true);
				audio_play_sound(sound_e_sward,1,true);
			break;
			case room_kazino:
				audio_play_sound(rook_britge,1,true);
			break;
			case room_racing:
			case room_sky:
			case room_flower:
				audio_play_sound(hill,1,true);
			break;
			case room_tuto:
			case room_UFO:
			case room_sward:
			case room_dragon:
				audio_play_sound(iglle_song,1,true);
			break;
			case room_hos:
			case room_hos1:
				audio_play_sound(hospital,1,true);
			break;
			case room_under:
			case room_bolguang:
			case room_rockcave:
				audio_play_sound(too_long_name,1,true);
			break;
			case room_hell:
				audio_play_sound(hell_song,1,true);
			break;
			case room_arena:
				audio_play_sound(circle_of_war,1,true);
			break;
			case room_sea:
			case room_sea2:
				audio_play_sound(water,1,true);
			break;
			case room_soccer:
			case room_what :
				audio_play_sound(egg,1,true);
			break;
			case room_1004:
				audio_play_sound(sound1004,1,true);
			break;
			case room_gaybar :
				audio_play_sound(gay_sound,1,true);
			break;
			case room_l:
				audio_play_sound(last,1,true);
				audio_play_sound(last,1,true);
				audio_play_sound(last,1,true);
			break;
		}
	}


}
