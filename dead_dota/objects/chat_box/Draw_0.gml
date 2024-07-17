if (!instance_exists(testing)) exit;
x = camera_get_view_x(view_camera[0]) + global.window_width / 2 - (1024 / 2 - xstart);
y = camera_get_view_y(view_camera[0]) + global.window_height - (768 - ystart);
