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
			switch(image_index) {
				case 0:
				case 1:
					global.ip = global.ips[image_index];
				break;
				case 2:
					global.ip = get_string("들어가고 싶은 개인서버 ip입력", "");
					break;
				case 3:
					network_set_config(network_config_connect_timeout, 800);
					
					socket = network_create_socket(network_socket_tcp);
					network_set_timeout(socket, 1000, 1000);
					for (var i = 0; i < ip_num; i++) {
						connect_check(i);
					}
					network_destroy(socket)
					exit;
				break;
			}
			
			instance_deactivate_object(obj_ip);
			audio_play_sound(Click_sound,1,false);
			audio_play_sound(Click_sound,1,false);
			global.ip_check = array_create(2, noone);
		break;
	}
}

