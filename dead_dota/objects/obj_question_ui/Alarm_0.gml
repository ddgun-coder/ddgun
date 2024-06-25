/// @description Insert description here
// You can write your code in this editor
if (drop) exit;
if (instance_exists(testing)) {
	if (frac(testing.YA / 90) == 0) {
		switch(testing.YA) {
			case 0 :
				your_choice = 3;
				break;
			case 90 :
				your_choice = 2;
				break;
			case 180 :
				your_choice = 1;
				break;
			case 270:
				your_choice = 0;
				break;
		}
		reverse_time = 60;
		reverse_time_start = true;
		if (your_choice == answer_index) {
			question_result = QR.correct;
			if (special) {	
				testing.babo_gage = min(testing.babo_gage + 40, 100);
			}
			else {
				testing.babo_gage = min(testing.babo_gage + 20, 100);	
			}
			audio_play_sound(snd_correct, 0, false);
			if (is_skilled) {
				with (testing) {
					server78_create_instace(obj_babo_skill4, x, y);	
				}
			}
		}
		else {
			if (special) {	
				testing.babo_gage = max(testing.babo_gage - 20, 0);
			}
			else {
				testing.babo_gage = max(testing.babo_gage - 20, 0);
			}
			question_result = QR.not_correct;
			audio_play_sound(snd_fail, 0, false);
			if (is_skilled) {
				with (testing) {
					server78_create_instace(obj_babo_skill41, x, y);	
				}
			}
		}
	}
	else {
		if (is_skilled) {
			with (testing) {
				server78_create_instace(obj_babo_skill41, x, y);	
			}
		}
		reverse = true;
		question_result = QR.none;
	}
}













