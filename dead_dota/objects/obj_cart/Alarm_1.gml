/// @description Insert description here
// You can write your code in this editor
var num = instance_number(obj_cart_pathm);
var idd = id;
for(var i = 0; i < num; i++) {
	idd = instance_find(obj_cart_pathm, i);
	path_add_point(path, idd.x, idd.y, 10);
}
path_set_closed(path, false);
path_start(path, 0, path_action_stop, false);
instance_destroy(obj_cart_pathm);