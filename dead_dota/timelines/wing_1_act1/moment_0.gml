a_cooltime = 40;
arm_type = "attack"
buff_time = 5 * room_speed;
buff_index = spr_wing1;
server77_equal(serve_val.buff_index, buff_index, buffer_u16);
server78_create_instace(mol_skill1, x, y);
left_arm_YA = YA - 180;
go_to_speed = 1;
aexp += 30;
server202_sound(wing_1_sound);