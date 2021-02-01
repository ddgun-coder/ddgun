arm_all_normal();
buff_index = spr_none;
big_val = 1;
go_to_scale = 1;
invisible = false;
a_cooltime = 90;
arm_type = "attack"
arm_type_more = "temp_YA_async";
temp_YA = YA;
instance_create_depth(x, y, depth, tu_skill4t);
arm_movement(0, -3, 0, 15);
server202_sound(tu_4_sound);
server202_sound(tu_4_sound);