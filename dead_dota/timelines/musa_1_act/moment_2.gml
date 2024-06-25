switch(global.skin) {
	case 0:
        effect_index = effect_musa1;
		spr_arml_more = spr_musa_1_skill;
    break;
	case 1:
	    effect_index = effect_musa1;
		spr_arml_more = spr_dd_musa_1_skill;
	break;
    case 2:
		effect_index = effect_musa1;
		spr_arml_more = spr_musa_1_skill;
    break;
	case 3:
		effect_index = spr_cybermu;
		spr_arml_more = spr_musa_1_skill;
    break;
	case 4:
		effect_index = Spr_bam_musa1;
		spr_arml_more = spr_bam_sward;
    break;
	case 5:
		effect_index = spr_west_musa1;
		spr_arml_more = spr_musa_1_skill;
    break;
	default:
		effect_index = effect_musa1;
		spr_arml_more = spr_musa_1_skill;
    break;
}