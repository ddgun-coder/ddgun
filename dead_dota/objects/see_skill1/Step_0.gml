/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(8 * cid_id.big_val, cid_id.YA - 90);
y += lengthdir_y(8 * cid_id.big_val, cid_id.YA - 90);
image_angle = cid_id.YA;
if (cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();	
}