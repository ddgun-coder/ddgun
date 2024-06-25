arm_type = "attack"
arm_type_more = "shot"
spr_armr_more = spr_shotgun;
a_cooltime = 23
temp_YA = YA;
server78_create_instace(obj_snow_effect1, x, y);

switch(w_attack_type) {
	case spr_mod2:
	if (d_attack_type = spr_mod2) {
	    repeat(10) {
	       var _YA = irandom_range(YA - 8, YA + 8)
	       server79_create_instace_ext(obj_snow42, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), _YA)
	    }
	}
	else {
		  repeat(7) {
	       var _YA = irandom_range(YA - 15, YA + 15)
	       server79_create_instace_ext(obj_snow42, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), _YA)
	    }
	}// 더블샷 탄퍼짐
	break;
	case spr_mod1:

	if (d_attack_type = spr_mod2) {
	    repeat(10) {
	       var _YA = irandom_range(YA - 8, YA + 8)
	       server79_create_instace_ext(obj_snow41, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), _YA)
	    }
	}
	else {
		  repeat(7) {
	       var _YA = irandom_range(YA - 15, YA + 15)
	       server79_create_instace_ext(obj_snow41, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), _YA)
	    }
	}// 고드름 탄퍼짐

	break;
	default:
	if (d_attack_type = spr_mod2) {
	
	    repeat(10) {
	       var _YA = irandom_range(YA - 8, YA + 8)
	       server79_create_instace_ext(obj_snow4, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), _YA)
	    }
	}
	else {
		  repeat(7) {
	       var _YA = irandom_range(YA - 15, YA + 15)
	       server79_create_instace_ext(obj_snow4, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), _YA)
	    }
	}//탄퍼짐
	break;
}

var t = instance_create_depth(x, y, depth, pota_skill31_back)
t.YA = YA//반동


