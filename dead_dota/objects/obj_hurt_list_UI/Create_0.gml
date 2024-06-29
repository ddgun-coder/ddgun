/// @description Insert description here
// You can write your code in this editor
surf = -1;
dx = sprite_get_width(spr_hurt_list_UI);
function surt_set() {
	if (!surface_exists(surf)) {
		var draw_y = 0;
		var const = undefined;
		var num = array_length(global.hurt_list);
		var color;
		var face_xoffset = sprite_get_xoffset(spr_face1);
		var face_yoffset = sprite_get_yoffset(spr_face1);
		var draw_dx = 15;
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
		surf = surface_create(256, 64 * num);
		surface_set_target(surf); 
		draw_set_halign(fa_center);
		for (var i = 0; i < num; i++) {
			draw_y = i * 64;
			const = global.hurt_list[i];
			draw_sprite(spr_hurt_list_UI, 0, 0, draw_y);
			
			draw_sprite(const.face_index, 0, draw_dx + face_xoffset, draw_y - face_yoffset - 15);
			draw_sprite(const.hat_index, const.hat_num, draw_dx + face_xoffset, draw_y - face_yoffset - 15);
			
			draw_set_color(color);
			draw_text(draw_dx + face_xoffset * 1.5, draw_y - face_yoffset, "■ " + const.name + " ■");
			draw_set_color(c_red);
			
			draw_sprite(spr_kill_arrow, 0, face_xoffset * 2 + draw_dx, draw_y);
			draw_sprite(const.spr, 0, face_xoffset * 2 + 100, draw_y + 32);
			
			draw_set_font(global.num_font);
			draw_text(face_xoffset * 2 + 100, draw_y, string(const.damage));
			draw_set_font(font1);
			draw_set_color(c_white);
			draw_sprite(spr_face_hurt, 0, 150 + face_xoffset * 2, draw_y - face_yoffset - 15);
			draw_sprite(global.hat, testing.level, 150 + face_xoffset * 2, draw_y - face_yoffset - 15);
		}
		surface_reset_target();
	}	
}