/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 55133E91
/// @DnDArgument : "code" "DMG(35, hunt_skill2, 60)$(13_10)if (other.cid_id != global.my_cid_id) {$(13_10)	if place_free(other.x, other.y) {$(13_10)		x = other.x;$(13_10)		y = other.y;$(13_10)		other.solid_co = global.my_cid;$(13_10)	}$(13_10)}"
DMG(35, hunt_skill2, 60)
if (other.cid_id != global.my_cid_id) {
	if place_free(other.x, other.y) {
		x = other.x;
		y = other.y;
		other.solid_co = global.my_cid;
	}
}