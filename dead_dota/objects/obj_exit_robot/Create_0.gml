/// @description Insert description here
// You can write your code in this editor
time_max = 100;
skill_create(time_max);
delta_x = 0;
alarm[1] = 1;
startx = x;
starty = y;
dir = 0;

pull_up = false;

var ac = animcurve_get(ac_incre);
channel = ac.channels[2];
curve_val = 0;