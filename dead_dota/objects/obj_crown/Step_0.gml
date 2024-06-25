/// @description Insert description here
// You can write your code in this editor
delta_y = max(delta_y - 15, 50);
sin_y =  sin(sin_theta);
sin_theta += 0.01;
y = cid_id.y - delta_y * cid_id.big_val + sin_y * 15;
x = cid_id.x;
image_angle = 0;
image_index = activate;
if (!activate) {
	if (activate_time > 0) {
		activate_time--;
	}
	else {
		activate = true;	
	}
}