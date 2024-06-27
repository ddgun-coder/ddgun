draw_set_halign(fa_center);
draw_set_font(Font3)

var dx = mouse_x - camera_get_view_x(view_camera[0]);
var dy = mouse_y - camera_get_view_y(view_camera[0]);
draw_sprite(sprite_index, image_index, dx, dy);

dx -= sprite_width / 2 - sprite_xoffset * 2;
dy += 15;
dx = round(dx);
dy = round(dy);
draw_set_color(c_white);
draw_text(dx, dy, "쿨타임:  " + string(time / 40) + "초");
	
draw_set_font(font0)
draw_set_color(make_color_rgb(254, 215, 100));
draw_text_ext(dx, dy + 25, "" + name, 14, 300);
	
draw_set_font(font1)
draw_set_color(c_white);
draw_text_ext(dx, dy + 50, "" + explain, 14, 300);


depth = -5100




