/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4FC8FD55
/// @DnDArgument : "code" "prt_val_add(0, irandom(300));$(13_10)if (irandom(1000) == 1) {$(13_10)	random_level5();$(13_10)	testing.chat6 = testing.chat5;$(13_10)	testing.chat5 = testing.chat4;$(13_10)	testing.chat4 = testing.chat3;$(13_10)	testing.chat3 = testing.chat2;$(13_10)	testing.chat2 = testing.chat1;$(13_10)	testing.chat1 = "5차 당첨!"$(13_10)}$(13_10)instance_destroy(other.id);"
prt_val_add(0, irandom(300));
if (irandom(1000) == 1) {
	random_level5();
	testing.chat6 = testing.chat5;
	testing.chat5 = testing.chat4;
	testing.chat4 = testing.chat3;
	testing.chat3 = testing.chat2;
	testing.chat2 = testing.chat1;
	testing.chat1 = "5차 당첨!"
}
instance_destroy(other.id);