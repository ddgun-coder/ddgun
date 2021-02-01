/// @description Insert description here
// You can write your code in this editor
if (dis <= 0) {
	with(testing) {
		prt_val_add(Val.event, 1 + image_index * 5);
		skill_say_time = 40;
		skill_say = "송편 + " + string(1 + image_index * 5);
	}
	instance_destroy();
}