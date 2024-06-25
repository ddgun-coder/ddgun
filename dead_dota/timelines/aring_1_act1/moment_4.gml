a_cooltime = 20;
arm_all_normal();
arm_type = "attack"
arm_movement(2, -4, 10, -10);
foot_movement(-6, 5, -6, 5);
left_arm_YA = 0 + 25;
right_arm_YA = 0 + 25;
left_foot_YA = 0 + 110;
right_foot_YA = 0 - 10
go_to_speed = 5;
if (aring_amount = 3){
server78_create_instace(aring_skill1, x, y);
}
if (aring_amount = 2){
server78_create_instace(aring_skill11, x, y);
}
if (aring_amount = 1){
server78_create_instace(aring_skill111, x, y);
}
audio_play_sound(kpower_1_sound,1,false);
normal_attack_type = spr_none