switch(room) {
case room_main :
    if (collision_point(mouse_x, mouse_y, id, true, false)) {
        draw_sprite_ext(spr_skill_button, 0, camera_get_view_x(view_camera[0]) + xx, camera_get_view_y(view_camera[0])  + yy,image_xscale,image_yscale,0,c_gray,1)
    }
    else{
        draw_sprite_ext(spr_skill_button, 0, camera_get_view_x(view_camera[0]) + xx, camera_get_view_y(view_camera[0])  + yy,image_xscale,image_yscale,0,c_white,1)
    }
    x = xx + camera_get_view_x(view_camera[0])
    y = yy + camera_get_view_y(view_camera[0])
break;
default :
    if (collision_point(mouse_x, mouse_y, id, true, false)) {
        draw_sprite_ext(spr_skill_button, 0, camera_get_view_x(view_camera[0]) + xx, camera_get_view_y(view_camera[0])  + yy,1,1,0,c_gray,1)
    }
    else{
        draw_sprite(spr_skill_button, 0, camera_get_view_x(view_camera[0]) + xx, camera_get_view_y(view_camera[0])  + yy)
    }
    x = xx + camera_get_view_x(view_camera[0])
    y = yy + camera_get_view_y(view_camera[0])
break;
}
	
