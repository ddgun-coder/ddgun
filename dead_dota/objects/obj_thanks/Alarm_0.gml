/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(testing) <= 350) {
	var obj
	obj = instance_create_depth(x + irandom(250), y + irandom(250), depth, choose(obj_thanks2, obj_thanks3,obj_thanks4,obj_thanks5,obj_thanks6));
	obj.image_angle = irandom(360);
	obj = instance_create_depth(x + irandom(250), y + irandom(250), depth, choose(obj_thanks2, obj_thanks3,obj_thanks4,obj_thanks5,obj_thanks6));
	obj.image_angle = irandom(360);
}
instance_destroy();