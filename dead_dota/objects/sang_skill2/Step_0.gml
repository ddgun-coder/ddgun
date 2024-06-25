x += lengthdir_x(45 * cid_id.big_val,YA-90);
y += lengthdir_y(45 * cid_id.big_val,YA-90);
image_xscale = cid_id.big_val * 1.25;
image_yscale = cid_id.big_val * 2.5;

array_insert(array_index, 0, image_index);
array_insert(array_x, 0, x);
array_insert(array_y, 0, y);
array_pop(array_index)
array_pop(array_x)
array_pop(array_y)