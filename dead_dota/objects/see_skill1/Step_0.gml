/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(go_to * cid_id.big_val, cid_id.YA - 90);
y += lengthdir_y(go_to * cid_id.big_val, cid_id.YA - 90);
image_angle = cid_id.YA;
image_xscale = cid_id.big_val * 1;
image_yscale = cid_id.big_val * 1;

if (cid_id.cancle_able == false or cid_id.sturn > 0) {
	if (cid_id == global.my_cid_id) {
		testing.invisible_time = 0
	}
	instance_destroy();	
}

/*
if (cid_id == global.my_cid_id) {
if (global.hat = spr_hat60) { 
    if (testing.level >= 1) { 
        if (keyboard_check_released(global.keyq)) {
		    if (testing.mana >= 54) {
	            prt_val_add(Val.mp, -54);
                server78_create_instace(see_skill2, x, y);
 	         }
			 else {
				  testing.skill_say_time = 30;
				  testing.skill_say = "MP: " + string(testing.mana) + " / 54(54)";
			}
        }
    }
}
}