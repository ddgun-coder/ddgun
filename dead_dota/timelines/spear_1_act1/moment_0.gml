arm_all_normal()
arm_type = "attack"
spr_armr_more = spr_spear;
right_arm_YA = YA - 180;
a_cooltime = 10;
right_arm_YA = YA;
arm_type = "attack"
spr_armr_more = spr_none;
a_possible = true;
arm_movement(0, -3, 0, 10);
server78_create_instace(spear_skill1, x, y);