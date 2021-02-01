/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 09B06E30
/// @DnDArgument : "code" "if (room == room_out) {$(13_10)	network_destroy(server);$(13_10)	instance_destroy(self);$(13_10)	instance_destroy(score_1_team);$(13_10)	instance_destroy(score_0_team);$(13_10)	exit;$(13_10)}"
if (room == room_out) {
	network_destroy(server);
	instance_destroy(self);
	instance_destroy(score_1_team);
	instance_destroy(score_0_team);
	exit;
}