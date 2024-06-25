/// @description Insert description here
// You can write your code in this editor

if (!surface_exists(surf)) {
	set_surf();	
}
draw_surface_part(surf, 0, surf_offset, sprite_width * 2, show_height, x - x_offset, y);
draw_sprite_ext(spr_wheel1, 0, x + sprite_width, y, 1, 2, 0, c_white, 0);
draw_sprite(spr_wheel2, 0, x + sprite_width, y + (surf_offset / surf_h - show_height) * 200)









