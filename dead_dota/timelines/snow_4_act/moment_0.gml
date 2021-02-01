arm_all_normal();
a_cooltime = 40
right_goto_YA = YA - 20;
arm_spin_able = 1;
arm_spin_speed = 2;
spr_armr_more = spr_shotgun;
arm_type = "attack"
var t = instance_create_depth(x, y, depth, pota_skill31_back)
t.YA = YA
repeat(6) {
	server79_create_instace_ext(obj_snow4, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), irandom_range(YA - 60, YA + 60))
}