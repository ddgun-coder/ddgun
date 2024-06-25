/// @description Insert description here
// You can write your code in this editor
draw_sprite_part(spr_hp,5,0,0, 58,4,x-28,y-52);
draw_sprite_part(spr_hp,0,0,0,(hp/70)*58,4,x-28,y- 52);//HP
draw_sprite_part(spr_hp,8,0,0, 58,4,x-28,y-48);
draw_sprite_part(spr_hp,1,0,0,(mp/30)*58,4,x-28,y- 48);//MP
draw_self();

draw_sprite(eng_buff,-1,x,y)