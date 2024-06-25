image_angle += spin_delay;
if (delay < go_speed) delay += 1;

x += lengthdir_x((go_speed - delay) * cid_id.big_val, angle);
y += lengthdir_y((go_speed - delay) * cid_id.big_val, angle);

array_insert(array_index, 0, image_index);
array_insert(array_x, 0, x);
array_insert(array_y, 0, y);
array_pop(array_index)
array_pop(array_x)
array_pop(array_y)

