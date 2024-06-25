/// @description Insert description here
// You can write your code in this editor
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}
prog++;
image_index = min(floor(prog / 250 * image_number), image_number - 1);

if (cid_id == global.my_cid_id) {
	if (keyboard_check_pressed(global.keya)) {
		switch(floor(image_index / 9)) {
			case 0:
				server78_create_instace(newb_skill4_0, x + lengthdir_x(-30, cid_id.YA - 90), y + lengthdir_y(-30, cid_id.YA - 90));
			break;
			case 1:
				server78_create_instace(newb_skill4_1, x + lengthdir_x(-30, cid_id.YA - 90), y + lengthdir_y(-30, cid_id.YA - 90));
			break;
			case 2:
				server78_create_instace(newb_skill4_2, x + lengthdir_x(-30, cid_id.YA - 90), y + lengthdir_y(-30, cid_id.YA - 90));
			break;
			case 3:
				server78_create_instace(newb_skill4_3, x + lengthdir_x(-30, cid_id.YA - 90), y + lengthdir_y(-30, cid_id.YA - 90));
			break;
		}
	}	
}


