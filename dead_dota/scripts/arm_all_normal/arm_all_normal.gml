function arm_all_normal() {
	left_arm_YA = YA;
	right_arm_YA = YA;

	left_arm_xscale = 1;
	right_arm_xscale = -1;
	left_arm_yscale = 1;
	right_arm_yscale = 1;

	left_arm_deltax = 0;
	left_arm_deltay = 0;
	right_arm_deltax = 0;
	right_arm_deltay = 0;

	left_goto_YA = 0;
	right_goto_YA = 0;
	arm_spin_able = 0;

	left_arm_xscale = 1;
	left_arm_yscale = 1;
	right_arm_xscale = -1;
	right_arm_yscale = 1;
	spr_arm_morex = 3;
	spr_arm_morey = 20;
	spr_armr_more = spr_none;
	spr_arml_more = spr_none;
	effect_index = spr_none;


}
