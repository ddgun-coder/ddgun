arm_type = "attack";
if (global.hat == spr_hat28) {
	a_cooltime = min(max(sturn, 30), 240);
}
else {
	a_cooltime = min(max(sturn, 20), 120);
}
effect_index = effect_cry;
arm_type_more = "cry";
temp_YA =YA;
server202_sound(cry_1_sound);