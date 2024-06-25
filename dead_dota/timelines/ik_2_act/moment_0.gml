arm_all_normal()
arm_type = "attack";
arm_type_more = "temp_YA_async"
a_possible = false;
temp_YA = YA;
effect_index = effect_lamp
server202_sound(ik_2_sound)
if(global.hat != spr_hat7) {
    for(var i = 0; i < MAX_ITME_BOX; i++) {
	    global.item_time[i] += 260 + level * 60;
    }
}
else {
	  for(var i = 0; i < MAX_ITME_BOX; i++) {
	    global.item_time[i] += 156 + level * 36;
    }
}