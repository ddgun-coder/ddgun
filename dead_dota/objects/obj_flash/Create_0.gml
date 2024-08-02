/// @description Insert description here
// You can write your code in this editor
skill_create(40);
image_blend = c_yellow;
copied_surf = -1;
copied = false;
copied_YA = 0;
copied_big_val = 1;
angle = 0;
audio_play_sound(snd_flash, 0, false);
function set_surf_to_cid_id() {
	if (!surface_exists(copied_surf)) {
		copied_surf = surface_create(2048, 2048);
		copied = false;
	}
	
	if (copied == false) {
		if (global.my_cid_id == cid_id) {
			with (testing) {
				if (surface_exists(surf)) {
					var temp_surf = surface_create(2048, 2048);
					other.copied = true;
					other.copied_YA = YA;
					other.copied_big_val = big_val;
					gpu_set_blendequation(bm_eq_subtract);
					surface_set_target(temp_surf);
					draw_clear(#FFF568);
					draw_surface(surf, 0, 0);
					surface_reset_target();
					surface_set_target(other.copied_surf);
					draw_clear(#FFF568);
					draw_surface(temp_surf, 0, 0);
					gpu_set_blendmode(bm_normal);
					surface_reset_target();
					surface_free(temp_surf);
				}
			}	
		}
		else {
			with (cid_id) {
				if (surface_exists(surf)) {
					var temp_surf = surface_create(2048, 2048);
					other.copied = true;
					other.copied_YA = YA;
					other.copied_big_val = big_val;
					gpu_set_blendequation(bm_eq_subtract);
					surface_set_target(temp_surf);
					draw_clear(#FFF568);
					draw_surface(surf, 0, 0);
					surface_reset_target();
					surface_set_target(other.copied_surf);
					draw_clear(#FFF568);
					draw_surface(temp_surf, 0, 0);
					gpu_set_blendmode(bm_normal);
					surface_reset_target();
					surface_free(temp_surf);
				}
			}	
		}
	}
}