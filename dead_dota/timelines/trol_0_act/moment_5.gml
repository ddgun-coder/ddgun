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