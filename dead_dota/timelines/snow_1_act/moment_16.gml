arm_all_normal();
arm_type = "attack"
arm_type_more = "reload"
spr_armr_more = spr_shotgun1
switch(d_attack_type) {
case spr_mod1:
    prt_val_add(Val.mp, -17)
    server202_sound(snow_reload_sound);
break;
default :  
break;
}