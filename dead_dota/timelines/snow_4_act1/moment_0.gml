/*arm_all_normal();
a_cooltime = 60
a_possible = false;
right_goto_YA = 0 - 20;
arm_spin_able = 1;
bullet -= 1
arm_spin_speed = 2;
temp_YA = YA;
spr_armr_more = spr_shotgun;
server78_create_instace(obj_snow_skill1, x, y);
server78_create_instace(obj_snow_effect1, x, y);
arm_type = "attack"
var t = instance_create_depth(x, y, depth, pota_skill31_back)
t.YA = YA
*/
arm_all_normal();
a_possible = false;
arm_type = "attack"
arm_type_more = "shot"
spr_armr_more = spr_shotgun

//0 16 30 45 = 선딜감소 전
// 0 8 24 37 선딜감소후