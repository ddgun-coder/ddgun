/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0B133909
/// @DnDArgument : "code" "if (other.team != global.team) {$(13_10)	if (arm_type_more != "a_w") {$(13_10)		buff_index = spr_none;$(13_10)		server77_equal(serve_val.buff_index, spr_none, buffer_u16);$(13_10)		DMG(12, n_attack_area, 25);$(13_10)		other_cid = 0;$(13_10)	}$(13_10)}$(13_10)"
if (other.team != global.team) {
	if (arm_type_more != "a_w") {
		buff_index = spr_none;
		server77_equal(serve_val.buff_index, spr_none, buffer_u16);
		DMG(12, n_attack_area, 25);
		other_cid = 0;
	}
}