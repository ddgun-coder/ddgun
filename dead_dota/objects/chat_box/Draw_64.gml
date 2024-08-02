/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(testing)) exit;
var _x = global.window_width / 2 - (1024 / 2 - xstart);
var _y = global.window_height - (768 - ystart) + view_get_yport(0);

draw_sprite_ext(spr_chat,0,_x,_y,1,1,0,-1,0.4);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(_x + 1,_y + 1, testing.chat6);//채팅 부분 
draw_text(_x + 1,_y + 16 ,testing.chat5);
draw_text(_x + 1,_y + 31 ,testing.chat4);
draw_text(_x + 1,_y + 46 ,testing.chat3);
draw_text(_x + 1,_y + 61 ,testing.chat2);
draw_text(_x + 1,_y + 76 ,testing.chat1);
draw_set_color(c_white);
draw_text(_x,_y, testing.chat6);//채팅 부분 
draw_text(_x,_y + 15 ,testing.chat5);
draw_text(_x,_y + 30 ,testing.chat4);
draw_text(_x,_y + 45 ,testing.chat3);
draw_text(_x,_y + 60 ,testing.chat2);
draw_text(_x,_y + 75 ,testing.chat1);