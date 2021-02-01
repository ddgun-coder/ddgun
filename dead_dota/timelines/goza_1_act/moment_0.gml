arm_all_normal();
server78_create_instace(goza_skill, x, y);
arm_type = "attack"
a_cooltime = 40;
left_arm_xscale = 2;
left_arm_yscale = 2;
right_arm_xscale = -2;
right_arm_yscale = 2;
right_arm_YA = YA + 155
left_arm_YA = YA - 155
left_foot_YA = YA - 45
right_foot_YA = YA + 45
right_foot_deltay = -6;
left_foot_deltay = -6;
effect_index_under = effect_goza1;
server77_equal(serve_val.cancle_able, effect_index_under, buffer_u16);
temp_YA = YA