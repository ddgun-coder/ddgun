alarm_set(0, 400);

team = -1;
cid = 3;

audio_play_sound(shep_2_sound, 1, false);
cid_id  = asset_get_index("testing" + string(cid));
image_angle = cid_id.YA;
dmg = 18;