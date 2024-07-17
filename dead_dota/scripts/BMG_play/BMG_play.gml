function sound_draw() {
	if (room != room_main) {
		x = camera_get_view_x(view_camera[0]) + global.window_width - (1024 - xstart);
		y = camera_get_view_y(view_camera[0]) + global.window_height - (768 - ystart);
	}
	else {
		if (hat_button_main.windows != 8) {
			exit;	
		}
	}
	draw_self();
}

function sound_draw_sounddot() {
	if (room != room_main) {
		x = camera_get_view_x(view_camera[0]) + global.window_width - (1024 - xstart);
		y = camera_get_view_y(view_camera[0]) + global.window_height - (768 - ystart);
	}
	else {
		if (hat_button_main.windows != 8) {
			exit;	
		}	
	}
	var draw_x = global.window_width - (1024 - xstart);
	var draw_y = global.window_height - (768 - ystart) + view_get_yport(0);
	draw_sprite(sprite_index, image_index, draw_x, draw_y)
	draw_sprite(spr_sounddot, 0, draw_x + (sound_x) * 64, draw_y + 32);
}

function BMG_play() {
	if (global.hat == spr_level5_hat1) {
		audio_play_sound(gay_sound,1,true);
	}
	else {
		switch(room) {
			case room_main : 
				if (!audio_is_playing(main_BGM2)) {
					audio_play_sound(main_BGM2,1,true);
				}
			break;
			case room_ruin:
			    audio_play_sound(ruin_BGM,1,true);
			break;
			case room_play:
			    audio_play_sound(SUBWAY_BGM,1,true);
				audio_play_sound(SUBWAY_BGM,1,true);
			break;
			case room_rock_bridge:
			case room_spin:
				audio_play_sound(rook_britge,1,true);
			break;
			case room_ball:
			case room_ball_test:
			case room_ghost:
				audio_play_sound(my_friend_rip,1,true);
			break;
			case room_antcave:
			case room_ant:
			case room_study:
				audio_play_sound(FID,1,true);
			break;
			case room_night_forest:
			   audio_play_sound(dota_song,1,true);
			break;
			case room_dragon_sward:
				audio_play_sound(sound_e_sward,1,true);
				audio_play_sound(sound_e_sward,1,true);
			break;
			case room_kazino:
			case room_kazino2:
				audio_play_sound(rook_britge,1,true);
			break;
			case room_racing:
			case room_sky:
			case room_flower:
				audio_play_sound(hill,1,true);
			break;
			case room_tuto:
			audio_play_sound(tuto_bgm,1,true);
			audio_play_sound(tuto_bgm,1,true);
			audio_play_sound(tuto_bgm,1,true);
			break;
			case room_UFO:
			case room_sward:
			case room_dragon:
			case room_magic :
				audio_play_sound(iglle_song,1,true);
			break;
			case room_hos:
			case room_hos1:
				audio_play_sound(hospital,1,true);
			break;
			case room_under:
			case room_bolguang:
			case room_rockcave:
			case room_orion:
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
			case room_mu:
			    audio_play_sound(mu_ost,1,true);
			break;
		}
	}


}
