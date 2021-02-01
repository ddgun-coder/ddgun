draw_sprite_ext(spr_chat,0,x + camera_get_view_x(view_camera[view_current]),y + camera_get_view_y(view_camera[view_current]),1,1,0,-1,0.4);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(testing.cur_xview + chat_box.x + 1,testing.cur_yview + chat_box.y + 1, testing.chat6);//채팅 부분 
draw_text(testing.cur_xview + chat_box.x + 1,testing.cur_yview + chat_box.y + 16 ,testing.chat5);
draw_text(testing.cur_xview + chat_box.x + 1,testing.cur_yview + chat_box.y + 31 ,testing.chat4);
draw_text(testing.cur_xview + chat_box.x + 1,testing.cur_yview + chat_box.y + 46 ,testing.chat3);
draw_text(testing.cur_xview + chat_box.x + 1,testing.cur_yview + chat_box.y + 61 ,testing.chat2);
draw_text(testing.cur_xview + chat_box.x + 1,testing.cur_yview + chat_box.y + 76 ,testing.chat1);
draw_set_color(c_white);
draw_text(testing.cur_xview + chat_box.x,testing.cur_yview + chat_box.y, testing.chat6);//채팅 부분 
draw_text(testing.cur_xview + chat_box.x,testing.cur_yview + chat_box.y + 15 ,testing.chat5);
draw_text(testing.cur_xview + chat_box.x,testing.cur_yview + chat_box.y + 30 ,testing.chat4);
draw_text(testing.cur_xview + chat_box.x,testing.cur_yview + chat_box.y + 45 ,testing.chat3);
draw_text(testing.cur_xview + chat_box.x,testing.cur_yview + chat_box.y + 60 ,testing.chat2);
draw_text(testing.cur_xview + chat_box.x,testing.cur_yview + chat_box.y + 75 ,testing.chat1);