a_cooltime = 400;
spin_able = true;
spin_scale = 1.3
invisible = true;
invisible_time = 400;
arm_type = "attack"
cancle_able = true;
arm_movement(3, -3, 10, 10);
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
server78_create_instace(see_skill1, x, y);
if (level >= 2) {
   server78_create_instace(see_skill11, x, y);
}