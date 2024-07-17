x = cid_id.x + lengthdir_x(cid_id.charge * 15, cid_id.YA - 90)
y = cid_id.y + lengthdir_y(cid_id.charge * 15, cid_id.YA - 90)
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
image_index = cid_id.hat_frame + cid_id.skin;
if (cid_id.visible = false) {
	visible = false;
}
if (cid_id.hat != spr_hat6) {
	sprite_index = cid_id.hat
}
else {
	var spr_hat_array = [spr_hat6_1, spr_hat6_2, spr_hat6_3, spr_hat6_4];
	sprite_index = spr_hat_array[cid_id.hat_frame];
}
image_angle = cid_id.YA + cid_id.hat_YA
image_alpha = cid_id.alpha;

if (cid_id.hat != spr_hat47 and cid_id != global.my_cid_id) {
    if (time % 3 != 0) {
	    solid = false;
    }
    else {	
	    solid = true;
    }
}
time++;
if (visible) {
	solid = cid_id.solid;		
}
else {
	solid = false;
}