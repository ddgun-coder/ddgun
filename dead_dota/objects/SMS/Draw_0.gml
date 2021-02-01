cur_xview = camera_get_view_x(view_camera[view_current]);
cur_yview = camera_get_view_y(view_camera[view_current]);
draw_set_halign(fa_middle)
draw_sprite(spr_SMS,0,cur_xview+x,cur_yview+y)
draw_sprite_part(spr_hp,0,0,0,(testing.hp/testing.m_hp)*111,13,cur_xview + SMS.x + 12,cur_yview + SMS.y + 8);//체력 바 
draw_sprite_part(spr_hp,1,0,0,(testing.mana/testing.m_mana)*111,13,cur_xview + SMS.x + 128,cur_yview + SMS.y + 8);//마나 바 
draw_sprite_part(spr_hp,2,0,0,(testing.stemina/testing.m_stemina)*111,13,cur_xview + SMS.x + 244,cur_yview + SMS.y + 8);//스테미너 바
draw_set_color(c_orange);
draw_text_bold(cur_xview + SMS.x + 300, cur_yview + SMS.y, testing.stemina);
draw_set_color(c_blue);
draw_text_bold(cur_xview + SMS.x + 180, cur_yview + SMS.y, testing.mana);
draw_set_color(c_black);
draw_text_bold(cur_xview + SMS.x + 180, cur_yview + SMS.y + 35, testing.gi);
draw_set_color(c_lime);
draw_text_bold(cur_xview + SMS.x + 386, cur_yview + SMS.y, testing.sturn / 40);
draw_set_color(c_white);
draw_text(cur_xview + SMS.x + 300, cur_yview + SMS.y, testing.stemina);
draw_text(cur_xview + SMS.x + 180, cur_yview + SMS.y + 35, testing.gi);
draw_text(cur_xview + SMS.x + 180, cur_yview + SMS.y, testing.mana);
draw_text(cur_xview + SMS.x + 386, cur_yview + SMS.y, testing.sturn / 40);
draw_sprite_part(spr_hp,3,0,0,(testing.aexp/testing.m_aexp)*313,6,cur_xview + SMS.x + 25,cur_yview + SMS.y + 24);//경험치 바
draw_sprite_part(spr_hp,4,0,0,(testing.gi/testing.m_gi)*313,4,cur_xview + SMS.x + 25,cur_yview + SMS.y + 32);//기포인트 바
draw_sprite_part(spr_hp,6,0,0,(testing.sturn/testing.m_sturn)*40,413,cur_xview + SMS.x + 360,cur_yview + SMS.y + 8);//기절 바