/// @description Insert description here
// You can write your code in this editor
if( !surface_exists(mysurf) ){
    mysurf = surface_create(163,580);
}
surface_set_target(mysurf);
draw_sprite_part(sprite_index, 0, 0, 0, 163, 580 * (time / 20), 0, 0);
surface_reset_target();
draw_surface_ext(mysurf, x + lengthdir_x(56, image_angle + 180), y + lengthdir_y(56, image_angle + 180), 1, 1, image_angle, c_white, image_alpha);
image_yscale = min(time / 20, 1);