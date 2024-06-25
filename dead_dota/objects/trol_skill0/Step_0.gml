/// @description Insert description here
// You can write your code in this editor
if (sturn > 0) {
	sturn--;	
}

if (trol_cooltime > 0) {
	trol_cooltime--;	
}

if (speed >= 10) {
	friction = 1;	
}
else {
	friction = 0.1;
}

if (speed >= 10) {
	friction = 1;	
}
else {
	friction = 0.1;
}

if (speed >= 50) {
	speed = 50
}

var meet_id =  instance_place(x, y, trol_skill_hide_down);
if (meet_id != noone) {
    x += lengthdir_x(1, meet_id.image_angle + 90);
    y += lengthdir_y(1, meet_id.image_angle + 90);
}
meet_id = instance_position(x, y, trol_skill_hide_up);
if (meet_id != noone) {
   x += lengthdir_x(1, meet_id.image_angle - 90);
   y += lengthdir_y(1, meet_id.image_angle - 90);
}