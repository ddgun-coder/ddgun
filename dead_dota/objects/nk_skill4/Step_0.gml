/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(30 * cid_id.big_val, cid_id.YA - 90);
y += lengthdir_y(30 * cid_id.big_val, cid_id.YA - 90);
image_angle = cid_id.YA - 180;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	camera_set_view_target(view_camera[0], testing.id);
	instance_destroy();
}