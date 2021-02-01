YA = cid_id.YA
for (i = 0; i < 12; ++i)
{
	var a = instance_create_depth(x,y, 0, nin_skill11)
	a.YA = 30 * i;
	a.cid_id = cid_id
	a.team = team
	a.cid = cid;
}
audio_play_sound(hunt_1_sound,1,false);
instance_destroy();