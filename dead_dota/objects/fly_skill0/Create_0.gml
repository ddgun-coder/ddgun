image_angle = testing.YA;
team = 0;

alarm_set(0, 40);

cid = 1;
cid_id  = asset_get_index("testing" + string(cid));
audio_play_sound(fly_4_sound, 9,false);
dmg = 10;