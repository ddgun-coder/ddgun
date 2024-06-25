arm_all_normal();
a_possible = false;
server78_create_instace(hammer_skill3, x, y)
spr_arml_more = spr_hammer;
arm_type = "attack"
keyboard_checkW = true;
cancle_able = true;
left_arm_get_bigger = true;
left_arm_get_bigger_delta = 0.01;
spin_steadly_start(true, 0.5);
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
instance_create_depth(x, y, depth, hammer_skill3_gauge);