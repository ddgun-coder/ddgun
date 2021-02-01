/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 135917DC
/// @DnDArgument : "code" "with(testing) {$(13_10)	//var what = irandom(2)$(13_10)	testing.buff_index = buff_bwiza2;$(13_10)	testing.buff_time = 240;$(13_10)	server77_equal(serve_val.buff_index, buff_index, buffer_u16);$(13_10)	testing.hp -= 10$(13_10)	testing.sturn = 60$(13_10)	testing.arm_type = "ouch"$(13_10)	with(testing) {$(13_10)		server77_equal(serve_val.sturn, sturn, buffer_u8)$(13_10)	}$(13_10)	audio_play_sound(have_hit, 0, false)$(13_10)}"
with(testing) {
	//var what = irandom(2)
	testing.buff_index = buff_bwiza2;
	testing.buff_time = 240;
	server77_equal(serve_val.buff_index, buff_index, buffer_u16);
	testing.hp -= 10
	testing.sturn = 60
	testing.arm_type = "ouch"
	with(testing) {
		server77_equal(serve_val.sturn, sturn, buffer_u8)
	}
	audio_play_sound(have_hit, 0, false)
}