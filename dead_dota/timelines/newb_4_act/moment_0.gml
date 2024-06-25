arm_all_normal();
arm_type = "attack"
a_cooltime = 280;
left_arm_yscale = -1;
right_arm_yscale = -1;
arm_movement(0, 0, -6, -6)
cancle_able = true;
spin_able = true;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
server78_create_instace(newb_skill4_gauge, x, y);
effect_index = spr_newb4_effect;