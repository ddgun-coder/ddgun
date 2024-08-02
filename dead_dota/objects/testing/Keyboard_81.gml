if (timeline_index == spear_3_act) {
    if (mana >= 30) {
	    if(a_a_cooltime < 0) {
		    prt_val_add(Val.mp, -30);
			arm_all_normal();
			a_a_cooltime = 40;
			arm_type = "attack"
			arm_type_more = "apple_1";
			arm_movement(13, -13, 2, 2);
			shild = true;
			effect_index = effect_shild
			effect_index_num = 0;
			temp_YA = YA;
			server202_sound(sward_2_sound);
			server77_equal(serve_val.effect_index_num, 0, buffer_bool);
		}
	}
	else {
		skill_say_time = 30;
		skill_say = "MP: " + string(mana) + " / "  + "30(30)";
	}
}
if (level >= 1) {
if (global.hat == spr_hat37) {
    if (a_a_cooltime <= 0) {
        if (mana >= 0) {
	       repeat(30) {
	       var tempnum = irandom(19) + 1;

	       var obj = asset_get_index("testing" + string(tempnum));
		       if (obj.x > 0 and obj.y > 0) {
			       if! (place_meeting(obj.x, obj.x, hurt_zone)) {
				       if (obj.hp > 0) {
					       x = obj.x;
					       y = obj.y + irandom(35);
				       }
			       } 
		       }
	       }
		   prt_val_add(Val.mp, -54);
           invisible = true;
           invisible_time = 240
           a_a_cooltime = 25
       }
	else {
		skill_say_time = 30;
		skill_say = "MP: " + string(mana) + " / 54(0)";
	}
}
}
}