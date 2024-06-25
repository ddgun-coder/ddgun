a_cooltime = 10;
arm_type = "attack"
arm_movement(3, -3, 10, 10);
var dx = x + lengthdir_x(45 * big_val, YA - 90)
var dy = y + lengthdir_y(45 * big_val, YA - 90)
if (!place_meeting(dx,dy, trol_skill1)) {
   server78_create_instace(trol_skill1, dx, dy);
}
else {
      server78_create_instace(trol_skill11, dx, dy);
	  server78_create_instace(trol_skill_hide_down, dx, dy);
	  server78_create_instace(trol_skill_hide_up, dx, dy);
}