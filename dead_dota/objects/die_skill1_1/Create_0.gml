image_angle = testing.YA;
team = 0;

alarm_set(0, 40);

audio_play_sound(die_1_sound2,9,false);
cid = 1;
cid_id  = asset_get_index("testing" + string(cid));
dmg = 10;