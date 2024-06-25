function all_YA_change2(argument0) {
	var delta = argument0
	switch(arm_type_more) {
		case "arm_lock":
		case "arm_lock2":
		case "arm_lock3":
		case "arm_lock4":
		case "bam_1":
			go_to_solid_YA = delta;
		break;
		case "arm_locky":
			go_to_solid_YA = delta;	
		break;
		case "sward_10":
		case "sward_3":
			YA = delta;
			//left_foot_YA = delta;
			//right_foot_YA = delta;
		break;
		default:
			YA = delta;
			/*
			if !(cancle_able) {
				left_arm_YA = delta;
				right_arm_YA = delta;	
			}
			left_foot_YA = delta;
			right_foot_YA = delta;
			*/
		break;
	}
	YA2 = delta
}
