arm_all_normal();
a_cooltime = 180;
arm_type = "attack"
arm_type_more = "charge"
temp_YA = YA;
right_foot_deltay = -10;
left_foot_deltay = -10;
go_to_speed = 20
go_to_speed2 = 50
server78_create_instace(charge_skill2, x, y);
charge = true;
spin_able = true;
charge_time = 20;
if (global.hat == spr_hat27) cancle_able = true;
server77_equal(serve_val.cancle_able, true, buffer_bool);