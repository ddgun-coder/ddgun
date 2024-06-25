/// @description Insert description here
// You can write your code in this editor
x = cid_id.x;
y = cid_id.y;
image_alpha -= 0.02;
image_xscale += 0.4;
image_yscale += 0.4;

if (perfect = true) {
	if(testing.a_possible = false) {
		if(testing.x_cooltime <= 0) {
			if (keyboard_check(global.keyd)) {
				perfect = false
				x_cooltime = 40
				server78_create_instace(music_skill11, x, y);
				}
			}
		}
	}
	else {
		if(testing.a_possible = false) {
			if(testing.x_cooltime <= 0) {
				if (keyboard_check(global.keyd)) {
					instance_destroy();
				}
			}
		}
	}
	
if(cid_id.sturn > 0) {
	instance_destroy();
}
