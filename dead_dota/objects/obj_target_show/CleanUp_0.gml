/// @description Insert description here
// You can write your code in this editor
if (surface_exists(surf)) {
	surface_free(surf);	
}

if (instance_number(object_index) == 1) {
	with (testing) {
		arm_type = "normal";
		arm_type_more = "none";
		cancle_able = false;
		keyboard_checkE = false;	
	}
}