if(normal_attack_type == spr_bigsaw) {
	right_arm_YA = 0;
	left_arm_YA = 0;
	left_arm_xscale = 1;
	right_arm_xscale = -1;
	spr_armr_more = spr_bigsaw;
	spr_arml_more = spr_bigsaw;
	arm_movement(3, -3, 10, 10);
	if (aring_amount = 3){
    server78_create_instace(die_skill3_2, x , y);
    }
    if (aring_amount = 2){
    server78_create_instace(aring_attack, x , y);
    }
    if (aring_amount <= 1){
    server78_create_instace(aring_attack1, x , y);
    }
	server77_equal(serve_val.left_arm_xscale, left_arm_xscale, buffer_s8)
	server77_equal(serve_val.right_arm_xscale, right_arm_xscale, buffer_s8)
}