var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
draw_set_halign(fa_center)
draw_set_font(global.num_font)
if (instance_exists(serve)) {
	draw_sprite_ext(spr_score,0,x + cam_x,y + cam_y,1,1,0,-1,0.4);
	draw_set_color(c_red);
	draw_text(x + cam_x + 64, y + cam_y - 32, string(serve.team_score[0]) +  " | " + string(serve.max_score));
}
else {
	draw_sprite_ext(spr_score,0,x + cam_x,y + cam_y,1,1,0,-1,0.4);
	draw_set_color(c_red);
	draw_text(x + cam_x, y + cam_y - 32, "0");
}
draw_set_font(font1)
draw_set_halign(fa_left)