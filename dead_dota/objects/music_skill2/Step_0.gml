x = cid_id.x;
y = cid_id.y;
image_xscale = 1;
image_yscale = 1;

if (cid_id = global.my_cid_id) {
	if(c_time <= 0) {
	if (perfect = true) {
		if(testing.x_cooltime > 0)	{
			if(testing.sturn <= 0) {
				if (keyboard_check(global.keyq)) {
					perfect = false
					testing.x_cooltime = 44
					c_time = 20
					prt_val_add(Val.mp, 12);
					switch(Em) {
						case 0:
							server202_sound(music_1_sound);
							server202_sound(music_1_sound);
							server78_create_instace(music_skill22, x, y);
						break;
						case 1:
							server202_sound(music_1_sound1);
							server202_sound(music_1_sound1);
							server78_create_instace(music_skill22, x, y);
						break;
						case 2:
							server202_sound(music_1_sound2);
							server202_sound(music_1_sound2);
							server78_create_instace(music_skill22, x, y);
						break;
						case 3:
							server202_sound(music_1_sound3);
							server202_sound(music_1_sound3);
							server78_create_instace(music_skill22, x, y);
						break;
						case 4:
							server202_sound(music_1_sound4);
							server202_sound(music_1_sound5);
							server202_sound(music_1_sound7);
							server78_create_instace(music_skill23, x, y);
						break;
						}
					}
				}
			}
		}
	else {
		if(testing.x_cooltime > 0) {
			if(testing.sturn <= 0) {
				if (keyboard_check(global.keyq)) {
					alarm[0] = 1
					server78_create_instace(music_effect1, x, y);
				}
			}
		}
	}
}
}

c_time --

if (cid_id.live != 1) {
	instance_destroy()	
}