arm_type = "attack"
temp_YA = YA;
left_arm_yscale = 1;
right_arm_yscale = 1;
left_arm_YA = 0  - 55;
right_arm_YA = 0 + 55
effect_index = spr_none;
arm_movement(0, 0, 20, 20);
server78_create_instace(trol_skill0, x + lengthdir_x(55, YA - 90), y + lengthdir_y(55, YA - 90));   

/*
var trol_num = 0;
with(trol_skill0) {
   if(cid_id == global.my_cid_id) {
      trol_num++;   
   }
}
if (trol_num < 5) {
   server78_create_instace(trol_skill0, x + lengthdir_x(55, YA - 90), y + lengthdir_y(55, YA - 90));   
}
else {
   server78_create_instace(n_attack_area, x + lengthdir_x(55, YA - 90), y + lengthdir_y(55, YA - 90));   
}