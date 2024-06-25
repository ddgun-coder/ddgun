skill_create(80)
hat = spr_hat;
face = spr_e12;

YA = cid_id.YA
jumping = false;
jump_time = 0;

hat_x = x + lengthdir_x(0, YA - 90);//모자
hat_y = y + lengthdir_y(0, YA - 90);
big_val = 1
audio_play_sound(talmo_mint_sound, 0, false);
audio_play_sound(talmo_mint_sound, 0, false);
arm = spr_arm1
foot = spr_foot1
footL_x = x + lengthdir_x(0, YA - 90);
footL_y = y + lengthdir_y(0, YA - 90);
armL_x = x + lengthdir_x(0, YA - 90);
armL_y = y + lengthdir_y(0, YA - 90);
armR_x = x + lengthdir_x(0, YA - 90);
armR_y = y + lengthdir_y(0, YA - 90);
footR_x = x + lengthdir_x(0, YA - 90);
footR_y = y + lengthdir_y(0, YA - 90);

left_arm_YA = 0;
right_arm_YA = 0;

left_arm_xscale = 1;
right_arm_xscale = -1;
left_arm_yscale = 1;
right_arm_yscale = 1;

left_arm_deltax = 0;
spr_arm_more_num = 0
spr_armr_more = spr_none
spr_arml_more = spr_none

left_arm_deltax = 0;
left_arm_deltay = 0;
right_arm_deltax = 0;	
right_arm_deltay = 0;

spr_arm_morex = 3;
spr_arm_morey = 20;//팔

left_foot_YA = 0;
right_foot_YA = 0;
left_foot_xscale = 1;
right_foot_xscale = -1;
left_foot_yscale = 1;
right_foot_yscale = 1;

left_foot_deltax = 0;
left_foot_deltay = 0;
right_foot_deltax = 0;
right_foot_deltay = 0;//발

foot_type_num = 0
arm_type_num = 0
a_cycle = 10;
f_cycle = 10;// 팔,발 순환

arm_type = "normal"
arm_type_more = " none "
foot_type = "normal"

color = c_aqua;
alpha= 1
attack_speed = 0
a_cooltime = 30

image_alpha = 0;
alarm[2] = 1;