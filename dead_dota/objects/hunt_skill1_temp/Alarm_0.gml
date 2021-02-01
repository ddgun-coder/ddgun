/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 181106B4
/// @DnDArgument : "code" "YA = cid_id.YA$(13_10)for (i = 1; i < 5; ++i)$(13_10){$(13_10)	var a = instance_create_depth(x,y, 0, hunt_skill1)$(13_10)	a.YA = YA + 45 - 20 * i;$(13_10)	a.cid_id = cid_id$(13_10)	a.team = team$(13_10)	a.cid = cid;$(13_10)}$(13_10)audio_play_sound(hunt_1_sound,1,false);$(13_10)instance_destroy();"
YA = cid_id.YA
for (i = 1; i < 5; ++i)
{
	var a = instance_create_depth(x,y, 0, hunt_skill1)
	a.YA = YA + 45 - 20 * i;
	a.cid_id = cid_id
	a.team = team
	a.cid = cid;
}
audio_play_sound(hunt_1_sound,1,false);
instance_destroy();