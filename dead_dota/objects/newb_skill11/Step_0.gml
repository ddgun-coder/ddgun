/// @description Insert description here
// You can write your code in this editor
image_xscale = cid_id.big_val * 2;
image_yscale = cid_id.big_val * 2;
x += lengthdir_x(25, YA - 90);
y += lengthdir_y(25, YA - 90);

array_insert(array_index, 0, image_index);
array_insert(array_x, 0, x);
array_insert(array_y, 0, y);
array_pop(array_index)
array_pop(array_x)
array_pop(array_y)

//show_debug_message(array_index);
//show_debug_message(array_x);
//show_debug_message(array_y);