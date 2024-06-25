if (!instance_exists(testing)) exit;
x = camera_get_view_x(view_camera[0]) + global.window_width / 2 - (1024 / 2 - xstart);
y = camera_get_view_y(view_camera[0]) + global.window_height - (768 - ystart);
draw_sprite_ext(spr_chat,0,x,y,1,1,0,-1,0.4);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x + 1,y + 1, testing.chat6);//채팅 부분 
draw_text(x + 1,y + 16 ,testing.chat5);
draw_text(x + 1,y + 31 ,testing.chat4);
draw_text(x + 1,y + 46 ,testing.chat3);
draw_text(x + 1,y + 61 ,testing.chat2);
draw_text(x + 1,y + 76 ,testing.chat1);
draw_set_color(c_white);
draw_text(x,y, testing.chat6);//채팅 부분 
draw_text(x,y + 15 ,testing.chat5);
draw_text(x,y + 30 ,testing.chat4);
draw_text(x,y + 45 ,testing.chat3);
draw_text(x,y + 60 ,testing.chat2);
draw_text(x,y + 75 ,testing.chat1);