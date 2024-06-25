/// @description Insert description here
// You can write your code in this editor
number = 0;
str = noone;
xoffset = sprite_get_xoffset(sprite_index);
yoffset = sprite_get_yoffset(sprite_index);
timer = 30;

turn_over = false;
turn_over_time = 60;

turn_over_pase = true;
image_xscale = -1.5;
image_yscale = 1.5;
image_speed = 0
sprite_index = spr_card_frame_back;

theta = 0;
surf = -1;
audio_play_sound(snd_card_start, 0, false);
selected = false;
end_action = false;
ani_cure = noone;
ani_cure_time = 0; 
ani_cure_time_max = 40; 