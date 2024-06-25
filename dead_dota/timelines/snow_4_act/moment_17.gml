if( w_attack_type = spr_mod2) {
if( bullet >= 1) {
switch(q_attack_type) {
default:

arm_type = "attack"
arm_type_more = "shot"
spr_armr_more = spr_shotgun;
a_cooltime = 23
temp_YA = YA;
bullet -=1
server78_create_instace(obj_snow_effect1, x, y);

switch(w_attack_type) {
case spr_mod2:

if (d_attack_type = spr_mod2) {
    repeat(10) {
       var _YA = irandom_range(YA - 8, YA + 8)
       server79_create_instace_ext(obj_snow42, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), _YA)
    }
}
else {
	  repeat(7) {
       var _YA = irandom_range(YA - 15, YA + 15)
       server79_create_instace_ext(obj_snow42, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), _YA)
    }
}//폭죽 탄퍼짐

break;
default:
if (d_attack_type = spr_mod2) {
	
    repeat(10) {
       var _YA = irandom_range(YA - 8, YA + 8)
       server79_create_instace_ext(obj_snow4, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), _YA)
    }
}
else {
	  repeat(7) {
       var _YA = irandom_range(YA - 15, YA + 15)
       server79_create_instace_ext(obj_snow4, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), _YA)
    }
}//탄퍼짐
break;
}

var t = instance_create_depth(x, y, depth, pota_skill31_back)
t.YA = YA//반동

break;
}
}
}