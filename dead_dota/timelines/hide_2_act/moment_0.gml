arm_all_normal()
a_cooltime = 400;
arm_movement(3, -3, 10, 10);
foot_movement(-3, 3, -5, -5);
arm_type = "attack"
cancle_able = true;
server202_sound(hide_2_sound);
right_arm_YA = 0 + 45;
left_arm_YA = 0 - 45;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
server78_create_instace(hide_skill2, x + lengthdir_x(100 * big_val, YA + 90), y + lengthdir_y(100 * big_val, YA + 90));
server78_create_instace(hide_skill2, x + lengthdir_x(100 * big_val, YA - 45), y + lengthdir_y(100 * big_val, YA - 45));
server78_create_instace(hide_skill2, x + lengthdir_x(100 * big_val, YA - 135), y + lengthdir_y(100 * big_val, YA - 135));