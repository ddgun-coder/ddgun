function hurt_array_clear() {
	var num = array_length(global.hurt_list);
	for (var i = 0; i < num; i++) {
		delete global.hurt_list[i];
	}
	global.hurt_list = [];
}

function ser_eface(argument0, argument1 = false) {
	var ser_YA = 0;
	if (argument1) {
		ser_YA = YA;
	}
	switch(argument0) {
		case spr_e37:
			draw_sprite_ext(spr_ee37,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e36:
			draw_sprite_ext(spr_ee36,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e35:
			draw_sprite_ext(spr_ee35,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e34:
			draw_sprite_ext(spr_ee34,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e32:
			draw_sprite_ext(spr_ee32,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e31:
			draw_sprite_ext(spr_ee31,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e30:
			draw_sprite_ext(spr_ee30,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e29:
			draw_sprite_ext(spr_ee29,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e28:
			draw_sprite_ext(spr_ee28,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e20:
			draw_sprite_ext(spr_ee20,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e19:
			draw_sprite_ext(spr_ee19,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e18:
			draw_sprite_ext(spr_ee18,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e17:
			draw_sprite_ext(spr_ee17,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e16:
			draw_sprite_ext(spr_ee16,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e15:
			draw_sprite_ext(spr_ee15,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e14:
			draw_sprite_ext(spr_ee14,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e13:
			draw_sprite_ext(spr_face_hurt,-1,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e12:
			draw_sprite_ext(spr_ee12,-1,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e11:
			draw_sprite_ext(spr_ee11,-1,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e10:
			draw_sprite_ext(spr_ee10,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e8:
			draw_sprite_ext(spr_ee8,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e7:
			draw_sprite_ext(spr_ee7,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e6:
			draw_sprite_ext(spr_e6,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e5:
			draw_sprite_ext(spr_ee5,-1,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e4:
			draw_sprite_ext(spr_e4,8,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e3:
			draw_sprite_ext(spr_ee3,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e33:
		case spr_e25:
		case spr_e2:
		case spr_e49:
		case spr_e50:
		case spr_e51:
		case spr_e52:
		case spr_e53:
			draw_sprite_ext(argument0,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e:
			draw_sprite_ext(spr_face_hurt,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e54 :
			draw_sprite_ext(spr_ee54,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		default:
			draw_sprite_ext(spr_face_hurt,0,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
		case spr_e48:
			draw_sprite_ext(spr_ee38,-1,surf_xoffset,surf_yoffset,1,1,ser_YA,-1,alpha);
		break;
	}


}
