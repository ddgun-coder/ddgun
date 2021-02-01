y = cid_id.y + lengthdir_y(400, cid_id.YA - 90);
x = cid_id.x + lengthdir_x(400, cid_id.YA - 90);
image_angle = cid_id.YA;
if(cid_id.sturn > 0 or cid_id.cancle_able == false) {
	instance_destroy();	
}