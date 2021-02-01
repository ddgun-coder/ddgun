/// @description Insert description here
// You can write your code in this editor
if (cid_id == global.my_cid_id) {
	with(testing) {
		if (other.state) {
			if (place_free(x, y + 11)) {
				y += 11;
				YA = 180;
			}
		}
		else {
			if (place_free(x, y - 11)) {
				y -= 11;
				YA = 0;
			}
		}
		
		if (other.x_state == 1) {
			if (place_free(x + 11, y)) {
				x += 11;
			}
			else {
				other.x_state = -1;	
			}
		}
		else {
			if (place_free(x - 11, y)) {
				x -= 11;
			}
			else {
				other.x_state = 1;	
			}
		}
	}
	if (state_time < 0) {
		state_time = 20;
		state = irandom(1);
	}
	state_time--;
}
image_angle = 0;
if (cid_id.YA == 0) {
	image_yscale = 1;
	image_blend = c_blue;
}
else {
	image_yscale = -1;
	image_blend = c_red;
}
x = cid_id.x;
y = cid_id.y;
var t = instance_create_depth(x, y, depth, obj_dot2);
t.image_blend = image_blend;
t.cid_id = cid_id;