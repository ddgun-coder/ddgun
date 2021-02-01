YA = cid_id.YA
for (i = 1; i < 6; ++i)
{
	var a = instance_create_depth(x,y, 0, nin_skill11)
	a.YA = YA + 30 - 10 * i;
	a.cid_id = cid_id
	a.team = team
	a.cid = cid;
}
audio_play_sound(hunt_1_sound,1,false);
instance_destroy();