arm_all_normal()
arm_type = "attack"
switch (global.hat) {
    case spr_hat17:
        switch(global.skin) {
	        case 0:
		        spr_armr_more = spr_bigsaw;
		        spr_arml_more = spr_bigsaw;
	         break;
	        case 1:
		        spr_arml_more = spr_bigsaw;
		        spr_armr_more = spr_bigsaw;
	        break;
	        case 2:
		         spr_arml_more = spr_bigsaw2;
		         spr_armr_more = spr_bigsaw2;
	        break;
	        case 3:
		         spr_arml_more = spr_none;
		         spr_armr_more = spr_music_bigsaw;
	        break;
	        default:
		         spr_arml_more = spr_bigsaw;
		         spr_armr_more = spr_bigsaw;
         	break;
            }
		break;
    default:
	    spr_armr_more = spr_bigsaw;
	    spr_arml_more = spr_bigsaw;
		break;
}
right_arm_YA = -180;
left_arm_YA = -180;
left_arm_xscale = -1;
right_arm_xscale = 1;
a_cooltime = 24 + round(big_val * 3);
server77_equal(serve_val.left_arm_xscale, left_arm_xscale, buffer_s8)
server77_equal(serve_val.right_arm_xscale, right_arm_xscale, buffer_s8)