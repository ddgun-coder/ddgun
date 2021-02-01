image_angle = testing.YA;
team = 0;
dmg = 10;
alarm_set(0, 100);

audio_play_sound(charge_4_sound,9,false);
cid = 1;
cid_id  = asset_get_index("testing" + string(cid));
alarm[1] = 30;