arm_all_normal();
a_cooltime = 30;
arm_type = "attack"
arm_type_more = "temp_YA_async";
cancle_able = true;
temp_YA = YA;
all_spin = true;
all_spin_limit = 720;
go_to_speed = 29;
arm_movement(0, -3, 0, 15);
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
server78_create_instace(tu_skill1 + up_skill, x + lengthdir_x(55 * big_val, YA - 90), y + lengthdir_y(55 * big_val, YA - 90));