if( !surface_exists(tempsurf) ){
	tempsurf = surface_create(382,368);
	surface_set_target(tempsurf);
	draw_clear(c_black);
	surface_reset_target();
}
if( !surface_exists(realsurf) ){
	realsurf = surface_create(382,368);
	surface_set_target(realsurf);
	draw_sprite(draw_this, 0, 0, 0);
	surface_reset_target();
}

surface_set_target(tempsurf);
gpu_set_blendmode(bm_subtract);
draw_sprite_ext(sprite3, 0, 382 / 2, 368, 200, 350, time, 1, 1);
gpu_set_blendmode(bm_normal);
surface_reset_target();

surface_set_target(realsurf);
draw_sprite(draw_this, 0, 0, 0);
gpu_set_blendmode(bm_subtract);
draw_surface(tempsurf, 0, 0);
gpu_set_blendmode(bm_normal);
surface_reset_target();

//draw_surface_ext(tempsurf, x, y, 1, 1, 0, c_white, 1);
draw_surface_ext(realsurf, x  + lengthdir_x(dis, YA + 136), y + lengthdir_y(dis, YA + 120), 0.7 * size, 0.7 * size, YA, c_white, image_alpha);