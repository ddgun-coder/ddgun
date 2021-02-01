/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 42F09618
/// @DnDArgument : "code" "if (cid_id == global.my_cid_id) {$(13_10)	testing.a_possible = true;	$(13_10)}$(13_10)instance_destroy()"
if (cid_id == global.my_cid_id) {
	testing.a_possible = true;	
}
instance_destroy()