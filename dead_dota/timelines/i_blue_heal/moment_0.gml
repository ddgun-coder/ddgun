arm_all_normal();
a_possible = false;
arm_type = "attack"
arm_type_more = "drinking_blue"
arm_movement(3, -3, 10, 10);
server78_create_instace(obj_drink_control ,x, y);
effect_index = effect_blue_heal; 
temp_YA = YA;
extra_speed = -2;
cancle_able = true;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);