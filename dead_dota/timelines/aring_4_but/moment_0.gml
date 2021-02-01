/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 637BB839
/// @DnDArgument : "code" "arm_all_normal()$(13_10)go_to_scale += 1;$(13_10)big_val += 1;$(13_10)big_val_time = 300;$(13_10)arm_type = "attack"$(13_10)spr_armr_more = spr_bigsaw;$(13_10)spr_arml_more = spr_bigsaw;$(13_10)right_arm_YA = YA - 180;$(13_10)left_arm_YA = YA - 180;$(13_10)left_arm_xscale = -1;$(13_10)right_arm_xscale = 1;$(13_10)a_cooltime = 26 + round(big_val * 3);$(13_10)server77_equal(serve_val.left_arm_xscale, left_arm_xscale, buffer_s8)$(13_10)server77_equal(serve_val.right_arm_xscale, right_arm_xscale, buffer_s8)"
arm_all_normal()
go_to_scale += 1;
big_val += 1;
big_val_time = 300;
arm_type = "attack"
spr_armr_more = spr_bigsaw;
spr_arml_more = spr_bigsaw;
right_arm_YA = YA - 180;
left_arm_YA = YA - 180;
left_arm_xscale = -1;
right_arm_xscale = 1;
a_cooltime = 26 + round(big_val * 3);
server77_equal(serve_val.left_arm_xscale, left_arm_xscale, buffer_s8)
server77_equal(serve_val.right_arm_xscale, right_arm_xscale, buffer_s8)