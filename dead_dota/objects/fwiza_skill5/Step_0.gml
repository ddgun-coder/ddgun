x += lengthdir_x(8, image_angle - 90);
y += lengthdir_y(8, image_angle - 90);
go_to = point_direction(x, y, testing.x, testing.y)
image_angle += angle_difference(go_to + 90, image_angle) / 5;