image_angle = testing.YA
team = 0;

alarm_set(0, 300);

cid = 1;
cid_id  = asset_get_index("testing" + string(cid));
alarm[1] = 6;
dmg = 36;
audio_play_sound(fighter_4_sound,9,true);
array_num = 25;
random_x_array = array_create(array_num, 0);
random_y_array = array_create(array_num, 0);
alarm[2] = 1;