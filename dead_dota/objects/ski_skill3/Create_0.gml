skill_create(600)
face_array = [spr_face1, spr_face2, spr_face5, spr_face8, spr_face10, spr_face3, spr_face9, spr_face4, spr_face11
, spr_face12, spr_face13, spr_face14, spr_face15, spr_face6, spr_face7, spr_face16]
hat = spr_hat74

face = irandom(array_length(face_array) - 1)

YA = cid_id.YA

hat_x = x + lengthdir_x(0, YA - 90);//모자
hat_y = y + lengthdir_y(0, YA - 90);
big_val = 1

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

color = c_white
alpha= 1
attack_speed = 0
a_cooltime = 30

image_alpha = 0
alarm[2] = 30
var count = 0;
if (instance_exists(ski_skill3)) {
	with(ski_skill3) {
		if (cid_id == global.my_cid_id) {
			count++;
		}
	}
}
main = (count == 1);
random_level = irandom(3)