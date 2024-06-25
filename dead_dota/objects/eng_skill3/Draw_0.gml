draw_sprite_part(spr_hp,5,0,0, 58,4,x-28,y-104);
draw_sprite_part(spr_hp,0,0,10,(hp/110)*58,4,x-28,y -104);//hp
draw_sprite_part(spr_hp,8,0,0, 58,4,x-28,y -100);
draw_sprite_part(spr_hp,1,0,0,(mp/80)*58,4,x-28,y -100);//mp
draw_self();

draw_sprite(eng_buff,-1,x,y)