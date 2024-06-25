/// @description Insert description here
// You can write your code in this editor
skill_create(4000);

rolling = false;
rolling_time = 0;
roll_down = false;
image_speed = 0;

ac = animcurve_get(ac_incre)
channel = ac.channels[2];
ac_time = 0;

rolling_left_right = false;
rolling_left_right_time = 0;
direct = 1;

coin_inseted = false;

arrow_rain = false;
arrow_rain_time = 0;

food_displaying = -1;
food_time = 0;