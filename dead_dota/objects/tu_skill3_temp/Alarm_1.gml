YA = cid_id.YA
if (cid_id.up_skill >= 3) {
	for (i = 1; i < 2; ++i)
	{
		var a = instance_create_depth(x + lengthdir_x(50 * cid_id.big_val, YA),y + lengthdir_y(50 * cid_id.big_val, YA),0,tu_skill31)
		a.YA = YA
		a.cid_id = cid_id
		a.team = team
		a.cid = cid;
		with(testing) {
			up_skill = 0;
		}
	}
}
else {
	for (i = 1; i < 2; ++i)
	{
		var a = instance_create_depth(x + lengthdir_x(50 * cid_id.big_val, YA),y + lengthdir_y(50 * cid_id.big_val, YA),0,tu_skill3)
		a.YA = YA
		a.cid_id = cid_id
		a.team = team
		a.cid = cid;
	}
}
audio_play_sound(tu_2_sound,9,false);
audio_play_sound(tu_2_sound,9,false);





