alarm_set(0, 10);

team = -1;
cid = 3;

cid_id  = asset_get_index("testing" + string(cid));
image_angle = cid_id.YA;
dmg = 20;
audio_play_sound(fighter_2_sound,9,false);