function all_YA_change(argument0) {
	var delta = argument0
	switch(arm_type_more) {
		case "arm_lock":
		case "arm_lock3":
		case "arm_lock4":
		case "arm_locky":
			go_to_solid_YA = delta;	
		break;
		case "sward_1":
		case "sward_3":
			YA = delta;
		break;
		default:
			YA = delta;
		break;
	}


}
