arm_all_normal()
arm_type = "attack"
spr_armr_more = spr_bigsaw;
spr_arml_more = spr_bigsaw;
right_arm_YA = YA - 180;
left_arm_YA = YA - 180;
left_arm_xscale = -1;
aring_amount = 3;
right_arm_xscale = 1;
a_cooltime = 26 + round(big_val * 3);
server77_equal(serve_val.left_arm_xscale, left_arm_xscale, buffer_s8)
server77_equal(serve_val.right_arm_xscale, right_arm_xscale, buffer_s8)