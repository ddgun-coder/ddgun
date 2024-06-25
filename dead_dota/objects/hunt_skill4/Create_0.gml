image_angle = testing.YA;
team = 0;

alarm_set(0, 10);

audio_play_sound(hunt_4_sound,9,false);
cid = 1;
cid_id  = asset_get_index("testing" + string(cid));
dmg = 200;