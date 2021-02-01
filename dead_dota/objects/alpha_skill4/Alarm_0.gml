/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 117672D1
/// @DnDArgument : "code" "if(global.team == team) {$(13_10)	with(testing) {$(13_10)		switch(irandom(4)) {$(13_10)			case 0:$(13_10)				normal_play(shep_2_act);$(13_10)			break;$(13_10)			case 1:$(13_10)				normal_play(jam_2_act);$(13_10)			break;$(13_10)			case 2:$(13_10)				normal_play(mili_3_act);$(13_10)			break;$(13_10)			case 3:$(13_10)				normal_play(mili_4_act);$(13_10)			break;$(13_10)			case 4:$(13_10)				normal_play(nuke_4_act);$(13_10)			break;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)instance_destroy();$(13_10)"
if(global.team == team) {
	with(testing) {
		switch(irandom(4)) {
			case 0:
				normal_play(shep_2_act);
			break;
			case 1:
				normal_play(jam_2_act);
			break;
			case 2:
				normal_play(mili_3_act);
			break;
			case 3:
				normal_play(mili_4_act);
			break;
			case 4:
				normal_play(nuke_4_act);
			break;
		}
	}
}
instance_destroy();