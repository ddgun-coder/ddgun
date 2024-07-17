var cam_x = 0;
var cam_y = view_get_yport(0);
draw_set_halign(fa_center)
draw_set_font(global.num_font)
x = global.window_width - 22 - 128;
var draw_x = global.window_width - 22 + cam_x - 128;
if (instance_exists(serve)) {
	draw_sprite_ext(spr_score,0,draw_x,y + cam_y,1,1,0,-1,0.4);
	draw_set_color(c_yellow);
	draw_text(draw_x +  64, y + cam_y - 32, string(serve.team_score[1])  +  " | " + string(serve.max_score));
}
else {
	draw_sprite_ext(spr_score,0,draw_x,y + cam_y,1,1,0,-1,0.4);
	draw_set_color(c_yellow);
	draw_text(draw_x + 64, y + cam_y - 32, "0");
}
draw_set_font(font1);
draw_set_halign(fa_left);