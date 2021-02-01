/// @description Insert description here
// You can write your code in this editor
if( !surface_exists(mysurf) ){
    mysurf = surface_create(113,334);
}
surface_set_target(mysurf);
draw_sprite_part(sprite_index, 0, 0, 0, 113, 334 * (time / 10), 0, 0);
surface_reset_target();
image_yscale = min(time / 10, 1);
draw_surface_ext(mysurf, x + lengthdir_x(56, cid_id.YA + 180), y + lengthdir_y(56, cid_id.YA + 180), 1, 1, cid_id.YA, c_white, 1);