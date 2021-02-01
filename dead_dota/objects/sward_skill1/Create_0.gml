alarm_set(0, 100);

team = -1;
cid = 3;

audio_play_sound(twiza_1_drow,1,true);
cid_id  = asset_get_index("testing" + string(cid));
image_angle = cid_id.YA;
dmg = 25;