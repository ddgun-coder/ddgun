right_arm_YA = 0;
left_arm_YA = 0;
left_arm_xscale = 1;
right_arm_xscale = -1;
arm_movement(3, -3, 10, 10);
server78_create_instace(t_skill2, x + lengthdir_x(14 * big_val, YA - 90), y + lengthdir_y(14 * big_val, YA - 90));
server77_equal(serve_val.left_arm_xscale, left_arm_xscale, buffer_s8)
server77_equal(serve_val.right_arm_xscale, right_arm_xscale, buffer_s8)