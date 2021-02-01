cid = 2;
cid_id  = asset_get_index("testing" + string(cid))
team = -1
alarm[0] = 200;
if (!audio_is_playing(EQ_4_sound)) {
	audio_play_sound(EQ_4_sound,9,false);	
}
dmg = 0.2;