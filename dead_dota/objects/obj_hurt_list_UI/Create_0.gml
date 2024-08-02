/// @description Insert description here
// You can write your code in this editor
surf = -1;
dx = sprite_get_width(spr_hurt_list_UI);
alarm[0] = 220;
function surt_set() {
	if (!surface_exists(surf)) {
		var draw_y = 0;
		var const = undefined;
		var sub_num = 0;
		var num = array_length(global.hurt_list);
		if (num > 10) {
			sub_num = num - 10;
			num = 10;
		}
		var color;
		var face_xoffset = sprite_get_xoffset(spr_face1);
		var face_yoffset = sprite_get_yoffset(spr_face1);
		var draw_dx = 15;
		var draw_dy = 64 + 10;
		var draw_facey;
		var spr_xsize, spr_ysize, spr_xscale, spr_yscale;
		switch (!global.team) {
			case 0 : 
				color = c_red;
				break;
			default :
			case 1 : 
				color = c_yellow;
				break;
		}
		if (num < 1) exit;
		surf = surface_create(350, draw_dy * num);
		surface_set_target(surf); 
		draw_set_halign(fa_center);
		for (var i = 0; i < num; i++) {
			draw_y = i * draw_dy;
			draw_facey = draw_y + face_yoffset + 15;
			const = global.hurt_list[i + sub_num];
			draw_sprite(spr_hurt_list_UI, 0, 0, draw_y);
			
			draw_sprite(const.face_index, 0, draw_dx + face_xoffset, draw_facey);
			draw_sprite(const.hat_index, const.hat_num, draw_dx + face_xoffset, draw_facey);
			
			draw_set_color(color);
			draw_text(draw_dx + face_xoffset * 1.5, draw_facey + 20, "■ " + const.name + " ■");
			draw_set_color(c_red);
			
			spr_xsize = sprite_get_width(const.spr);
			if (spr_xsize > draw_dy) {
				spr_xscale = draw_dy / spr_xsize;
			}
			else {
				spr_xscale = 1;	
			}
			spr_ysize = sprite_get_height(const.spr);
			if (spr_ysize > draw_dy) {
				spr_yscale = draw_dy /spr_ysize;
			}
			else {
				spr_yscale = 1;	
			}
			draw_sprite(spr_kill_arrow, 0, face_xoffset * 2 + draw_dx, draw_y);
			draw_sprite_ext(const.spr, 0, face_xoffset * 2 + 125, draw_y + 32, spr_xscale, spr_yscale, 0, c_white, 1);
			
			draw_set_font(global.num_font);
			draw_text(face_xoffset * 2 + 125, draw_y, string(const.damage));
			draw_set_color(c_white);
			draw_sprite(spr_face_hurt, 0, 175 + face_xoffset * 2, draw_facey);
			draw_sprite(global.hat, testing.level, 175 + face_xoffset * 2, draw_facey);
			if (const.num > 1) {
				draw_text(256, draw_y + 25, string("  X{0}", const.num));
			}
			draw_set_font(font1);
		}
		surface_reset_target();
	}	
}