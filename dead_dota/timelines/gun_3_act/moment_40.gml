go_to_speed = 50
arm_all_normal();
arm_movement(2, -4, 10, -10);
foot_movement(-6, 5, -6, 5);
left_arm_YA = 0 + 25;
right_arm_YA = 0 + 25;
left_foot_YA = 0 + 110;
right_foot_YA = 0 - 10
temp_YA = YA;
spr_arml_more = spr_gun2;
a_cooltime = 24;
arm_type = "attack"
a_possible = false
buff_time = 20;
buff_index = spr_wing1;
server77_equal(serve_val.buff_index, buff_index, buffer_u16);
server78_create_instace(gun_skill3, x , y );