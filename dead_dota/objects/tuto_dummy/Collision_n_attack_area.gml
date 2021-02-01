/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43170B29
/// @DnDArgument : "code" "if (sturn <= 0 and live != 0) {$(13_10)	hp -= 10;$(13_10)	sturn = 30;$(13_10)	audio_play_sound(have_hit ,0 ,false);$(13_10)	with(testing) {$(13_10)		combo++;$(13_10)		combo_time = 100;$(13_10)		if (combo < 20 and combo > 9) {$(13_10)			if (buff_time < 1) {$(13_10)				buff_time = 100;$(13_10)				buff_index = buff_p2;$(13_10)				server77_equal(serve_val.buff_index, buff_index, buffer_u16);$(13_10)			}$(13_10)		}$(13_10)		if (combo < 30 and combo > 19) {$(13_10)			if (buff_time < 1) {$(13_10)				buff_time = 100;$(13_10)				buff_index = buff_jaja;$(13_10)				server77_equal(serve_val.buff_index, buff_index, buffer_u16);$(13_10)			}$(13_10)		}$(13_10)		if (combo > 30) {$(13_10)			if (buff_time < 1) {$(13_10)				buff_time = 100;$(13_10)				buff_index = buff_nu2;$(13_10)				server77_equal(serve_val.buff_index, buff_index, buffer_u16);$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}"
if (sturn <= 0 and live != 0) {
	hp -= 10;
	sturn = 30;
	audio_play_sound(have_hit ,0 ,false);
	with(testing) {
		combo++;
		combo_time = 100;
		if (combo < 20 and combo > 9) {
			if (buff_time < 1) {
				buff_time = 100;
				buff_index = buff_p2;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
			}
		}
		if (combo < 30 and combo > 19) {
			if (buff_time < 1) {
				buff_time = 100;
				buff_index = buff_jaja;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
			}
		}
		if (combo > 30) {
			if (buff_time < 1) {
				buff_time = 100;
				buff_index = buff_nu2;
				server77_equal(serve_val.buff_index, buff_index, buffer_u16);
			}
		}
	}
}