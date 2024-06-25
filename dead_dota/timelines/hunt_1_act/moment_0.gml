/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 403500E0
/// @DnDArgument : "code" "arm_all_normal()$(13_10)switch(global.skin) {$(13_10)	case 0:$(13_10)       effect_index = effect_hunter1$(13_10)    break;$(13_10)	case 1:$(13_10)	    effect_index = effect_hunter1$(13_10)	break;$(13_10)    case 2:$(13_10)	    effect_index = spr_popbow$(13_10)    break;$(13_10)	case 3:$(13_10)		effect_index = spr_west_bow$(13_10)	break;$(13_10)	default:$(13_10)		effect_index = effect_hunter1$(13_10)    break;$(13_10)}$(13_10)a_cooltime = 46;$(13_10)arm_type = "attack"$(13_10)"
arm_all_normal()
switch(global.skin) {
	case 0:
       effect_index = effect_hunter1
    break;
	case 1:
	    effect_index = effect_hunter1
	break;
    case 2:
	    effect_index = spr_popbow
    break;
	case 3:
		effect_index = spr_west_bow
	break;
	default:
		effect_index = effect_hunter1
    break;
}
a_cooltime = 46;
arm_type = "attack"