/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 58104FE3
/// @DnDArgument : "code" "if (cid_id == global.my_cid_id) {$(13_10)	testing.moveable = true;$(13_10)	testing.extra_speed = 0;$(13_10)	testing.a_possible = true;$(13_10)	testing.go_to_speed = 0;$(13_10)	testing.terror_charge = 0;$(13_10)}"
if (cid_id == global.my_cid_id) {
	testing.moveable = true;
	testing.extra_speed = 0;
	testing.a_possible = true;
	testing.go_to_speed = 0;
	testing.terror_charge = 0;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 14A099E3
instance_destroy();