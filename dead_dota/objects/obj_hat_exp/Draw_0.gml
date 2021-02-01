/// @description Insert description here
// You can write your code in this editor
var xx =  camera_get_view_x(view_camera[view_current]);
var yy =  camera_get_view_y(view_camera[view_current]);
draw_sprite_ext(spr_hat1_exp, global.hat_show, xx, yy, 1, 1, 0, c_white, 0.9)
draw_text_ext_transformed(xx, yy, "F9 다시누르면 나가짐", 400, 400, 2, 2, 0)