arm_all_normal();
a_cooltime = 300;
arm_type = "attack"
arm_type_more = "charge"
temp_YA = YA;
right_foot_deltay = -10;
left_foot_deltay = -10;
server78_create_instace(charge_skill1, x, y);
go_to_speed = 40;
charge = true;
charge_time = 20;
if (global.hat == spr_hat27) cancle_able = true;
server77_equal(serve_val.cancle_able, true, buffer_bool);