alarm_set(0, 50);

team = -1;
cid = 3;

cid_id  = asset_get_index("testing" + string(cid));
image_angle = cid_id.YA;
audio_play_sound(dir_3_sound,9,false);