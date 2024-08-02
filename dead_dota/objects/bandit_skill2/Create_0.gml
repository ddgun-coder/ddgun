alarm_set(0, 100);

team = -1;
cid = 3;

cid_id  = asset_get_index("testing" + string(cid));
image_angle = cid_id.YA;
dmg = 11;
audio_play_sound(bandit_2_sound,9,true);