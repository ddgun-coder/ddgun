/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(go_to * cid_id.big_val, cid_id.YA - 90);
y += lengthdir_y(go_to * cid_id.big_val, cid_id.YA - 90);
image_angle = cid_id.YA;
image_xscale = cid_id.big_val * 1.9;
image_yscale = cid_id.big_val * 1.6;

if (cid_id.cancle_able == false or cid_id.sturn > 0) {
	if (cid_id == global.my_cid_id) {
		testing.invisible_time = 0
	}
	instance_destroy();	
}