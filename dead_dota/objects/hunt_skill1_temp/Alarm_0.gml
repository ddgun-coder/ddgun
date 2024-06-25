YA = cid_id.YA
for (var i = 1; i < 5; ++i)
{
	var a = instance_create_depth(x,y, 0, hunt_skill1)
	a.YA = YA + 45 - 20 * i;
	a.cid_id = cid_id
	a.team = team
	a.cid = cid;
}
audio_play_sound(hunt_1_sound,1,false);
instance_destroy();