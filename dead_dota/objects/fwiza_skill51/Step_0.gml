x += lengthdir_x(8, image_angle - 90);
y += lengthdir_y(8, image_angle - 90);
go_to = point_direction(x, y, cid_id.x, cid_id.y)
image_angle += angle_difference(go_to + 90, image_angle) / 5;
if (cid_id == global.my_cid_id) {
	instance_destroy();
}