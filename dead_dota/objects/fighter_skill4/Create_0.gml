image_angle = testing.YA
team = 0;

alarm_set(0, 300);

cid = 1;
cid_id  = asset_get_index("testing" + string(cid));
alarm[1] = 6;
dmg = 9;
audio_play_sound(fighter_4_sound,9,true);