if (type = 3 ) {
	type = 0
	if (cid_id == global.my_cid_id) {
		testing.stats6_type = 0
	}
}
y = cid_id.y 
x = cid_id.x 

type_real--
type_cooltime--
if (cid_id == global.my_cid_id) {
	if(type_real = 0) {
		type_real = 20
		server202_sound(stats_6_sound);
		server202_sound(stats_6_sound);
		type += 1
		testing.stats6_type += 1 
	}
}

if (cid_id == global.my_cid_id) {
	if (type_cooltime <= 0) {
		if (type_real >= 0) {
		if (keyboard_check_released(global.keyg)) {
		    switch(type) {
				case 0 :
					testing.stats6_type = 0
					testing.stats_big_val = 1
					size = 2.5
					type_real = -1
					testing.arm_type = "ouch"
					testing.sturn = 100
					alarm[0] = 60
					server202_sound(stats_6_sound1);
					server202_sound(stats_6_sound1);
					server78_create_instace(stats6_destroy, x, y);
				break;
				case 1 :
					testing.stats6_type = 1
				    testing.stats_big_val = 1
					size = 2.5
					type_real = -2
					alarm[0] = 60
					alarm[3] = 58
					stats6_buff = true
					server202_sound(stats_6_sound1);
					server202_sound(stats_6_sound1);
					server78_create_instace(stats6_destroy, x, y);
				break;
				case 2 :
					testing.stats6_type = 2
					testing.stats_big_val = 1.3
					size = 2.5
					type_real = -3
					alarm[0] = 60
					server202_sound(stats_6_sound1);
					server202_sound(stats_6_sound1);
					server78_create_instace(stats6_destroy, x, y);
				break;
 	         }
        }
	}
}
if(stats6_buff = true) {
		testing.go_to_speed = 6;
		testing.YA_changeable = true;
	}
}
else {
	if (chesk_type = true) {
		if (cid_id.stats6_type = -1) {
				alarm[0] = 1
		}
	}
}