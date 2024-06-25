/// @description Insert description here
// You can write your code in this editor
view_enabled = true;
view_visible[0] = true;
view_set_wport(0, 1024);
view_set_hport(0, 768);
view_set_yport(0, 18);

camera_set_view_size(view_camera[0], 1024, 768 + 18);
surface_resize(application_surface, global.window_width, global.window_height + 18);

hurt_array_clear();

