/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B118070
/// @DnDArgument : "code" "x = cid_id.x$(13_10)y = cid_id.y$(13_10)if (cid_id.hp < 0) {$(13_10)	instance_destroy()	$(13_10)}"
x = cid_id.x
y = cid_id.y
if (cid_id.hp < 0) {
	instance_destroy()	
}