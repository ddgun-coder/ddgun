/// @description Insert description here
// You can write your code in this editor
x = xstart + camera_get_view_x(view_camera[view_current]);
y = ystart + camera_get_view_y(view_camera[view_current]);
draw_self();
draw_sprite(spr_sounddot, 0, x + (sound_x) * 64, y + 9);