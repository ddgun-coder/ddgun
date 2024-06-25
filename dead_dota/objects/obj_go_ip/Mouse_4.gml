/*if(shop_UI.windows = false) {
	switch(hat_button_main.windows) {
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		break;
		default:
			if (instance_exists(obj_ip)) {
				instance_deactivate_object(obj_ip);
			}
			else {
				instance_activate_object(obj_ip);
			}
			//msg = get_string_async("들어가고 싶은 개인서버 ip입력", "");
			audio_play_sound(Click_sound,1,false);
			audio_play_sound(Click_sound,1,false);
		break;
	}
}*/
if(shop_UI.windows = false) {
switch(hat_button_main.windows) {
case 1:
case 2:
case 3:
case 4:
case 5:
case 6:
break;
default:
msg = get_string_async("들어가고 싶은 개인서버 ip입력", "");
audio_play_sound(Click_sound,1,false);
audio_play_sound(Click_sound,1,false);
break;
}
}


