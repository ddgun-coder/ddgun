/// @description Insert description here
// You can write your code in this editor
var draw_x = 0;
var draw_y = view_get_yport(0);
switch(room) {
case room_main :
    if (collision_point(mouse_x, mouse_y, id, true, false)) {
        draw_sprite_ext(spr_skill_button, 0, xx, draw_y + yy,image_xscale,image_yscale,0,c_gray,1)
    }
    else{
        draw_sprite_ext(spr_skill_button, 0, xx, draw_y + yy,image_xscale,image_yscale,0,c_white,1)
    }
break;
default :
    if (collision_point(mouse_x, mouse_y, id, true, false)) {
        draw_sprite_ext(spr_skill_button, 0, xx, draw_y + yy,1,1,0,c_gray,1)
    }
    else{
        draw_sprite(spr_skill_button, 0, xx, draw_y + yy)
    }
break;
}
