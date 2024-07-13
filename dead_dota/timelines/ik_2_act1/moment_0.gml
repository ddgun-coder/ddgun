arm_all_normal()
arm_type = "attack";
arm_type_more = "temp_YA_async"
a_possible = false;
temp_YA = YA;
effect_index = effect_lamp
server202_sound(ik_2_sound)
for(var i = 0; i < MAX_ITME_BOX; i++) {
	if (global.item[i] != spr_none) {
        global.item_time[i] += shop_button1.item[global.item[i]].max_time * 0.12;
    }
}