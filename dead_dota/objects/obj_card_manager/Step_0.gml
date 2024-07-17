/// @description Insert description here
// You can write your code in this editor
image_blend = merge_colour(c_white, c_yellow, card_blend_ratio);
card_blend_ratio = max(card_blend_ratio - 0.01, 0);
card_light_alpha = max(card_light_alpha - 0.01, 0);
fire_work_time = max(fire_work_time - 1, 0);
if (card_playing) {
	if (card_playing_time > 0) {
		card_playing_time--;
		card_playing_effect_index = (card_playing_effect_index + 1) mod sprite_get_number(spr_card_effect);
	}
	else {
		card_playing = false;
		cur_card_str = noone;
		var _id = instance_create_depth(x - 45, y - 75 , depth - 1, obj_card_disappear);
		if (!surface_exists(_id.surf)) {
			_id.surf = surface_create(180, 300);
		}
		surface_copy(_id.surf, 0, 0, surf);
	}
}

if (seletable) {
	alpha = min(alpha + 0.01, 0.6);
	if (keyboard_check_pressed(global.keyf)) {
		audio_play_sound(snd_card_select, 0, false);
		selected_number = (selected_number + 1)	mod 3;
	}	
}
if (draw_dy_timer > 0) {
	draw_dy_timer--;		
}

if (timer > 0) {
	timer--;
}
else if (card_select_start) {
	card_end();
}

if (card_down_acition) {
	if (ani_cure_time < ani_cure_time_max) {
		ani_cure_time++;
		var ani_cure = animcurve_get(ac_fast).channels[0];
		var _dx = animcurve_channel_evaluate(ani_cure, ani_cure_time / ani_cure_time_max);
		card_dy = _dx * 50;
	}
	else {
		card_down_acition = false;
	}
}
var cur_xview = camera_get_view_x(view_camera[0]);
var cur_yview = camera_get_view_y(view_camera[0]);
if (point_in_rectangle(mouse_x - cur_xview, mouse_y - cur_yview, bbox_left, bbox_top, bbox_right, bbox_bottom) or keyboard_check(vk_tab)) {
	card_scale = min(card_scale + 0.05, 1);
}
else {
	card_scale = max(card_scale - 0.05, 0.5);
}	

if (instance_exists(testing) and cur_card_str != noone) {
	if (cur_card_str.disposal) {
		if (keyboard_check_pressed(global.keyf) and card_playing == false) {
			switch (cur_card_str.name_str) {
				case "초죽음" :
					with (testing) {
						if (check_attackable()) {
							other.card_playing = true;	
							other.card_playing_time = 400;
							normal_play(pillar_set);
						}
					}
					break;
				case "긴급탈출카드" :
					with (testing) {
						if (check_attackable()) {
							other.card_playing = true;	
							other.card_playing_time = 2;
							normal_play(exit_act);
							var rx = x;
							var ry = y;
							repeat (500) {
								var xx = irandom(room_width - 100) + 50;
								var yy = irandom(room_height - 100) + 50;
								if(place_free(xx,yy)) {
									if (!place_meeting(xx, yy, only_first)){
										rx = xx;
										ry = yy;
										break;
									}
								}
							}
							server78_create_instace(obj_exit_robot, rx, ry);
						}
					}
					break;
				case "울보" :
					card_playing = true;	
					card_playing_time = 400;
					break;
				case "엔데믹" :
					card_playing = true;	
					card_playing_time = 2;
					with (testing) { 
						buff_index = buff_endemic;
						buff_time = 2000;
					}
				break;
				case "룰렛" :
					card_playing = true;	
					card_playing_time = 2;
					with (testing) { 
						server78_create_instace(obj_skill_roulette, x, y);
					}
				break;
				case "압수" :
					card_playing = true;	
					card_playing_time = 40 * 30;
					with (testing) { 
						armor += 100;
						instance_create_depth(x, y, depth, gili_skill32);
					}
				break;
				case "왕관의 무게" :
					card_playing = true;	
					card_playing_time = 40 * 30;
					with (testing) { 
						server78_create_instace(obj_crown, x, y + 500);
					}
				break;
				case "킹냥이" :
					card_playing = true;	
					card_playing_time = 40 * 30;
					with (testing) { 
						server78_create_instace(obj_cat, x, y);
					}
				break;
			}//f키로 사용하는 부분 쓰는곳
			card_playing_time_max = card_playing_time;
		}
	}
	else {
		switch (cur_card_str.name_str) {
			case "쓸만한 점멸" :
				with (testing) {
					stemina -= 1;
				}
				break;
			case "폭죽" :
				if (fire_work_time <= 0) {
					fire_work_time = 40 * 2;
					with (testing) {
						server78_create_instace(choose(obj_firework1, obj_firework2, obj_firework3), x, y);
					}
				}
				break;
		}//step처럼 쓰는곳
	}
}