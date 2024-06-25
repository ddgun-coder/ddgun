/*if (room == room_main) {
draw_sprite(spr_box, 0, camera_get_view_x(view_camera[0]) + xx, camera_get_view_y(view_camera[0])  + yy)
x = xx + camera_get_view_x(view_camera[0])
y = yy + camera_get_view_y(view_camera[0])
}
else {*/
switch(room) {
	case room_main :
	    if (collision_point(mouse_x, mouse_y, id, true, false)) {
	        draw_sprite_ext(spr_box, image_index, camera_get_view_x(view_camera[0]) + xx, camera_get_view_y(view_camera[0])  + yy,1,1,0,c_gray,1)
	    }
	    else{
	        draw_sprite(spr_box, image_index, camera_get_view_x(view_camera[0]) + xx, camera_get_view_y(view_camera[0])  + yy)
	    }
	    x = xx + camera_get_view_x(view_camera[0])
	    y = yy + camera_get_view_y(view_camera[0])
		if (shop_UI.windows == true)
		{
			image_index = 1;	
		}
		else {
			image_index = 0;	
		}		
	break;
	default :
	    x = camera_get_view_x(view_camera[0]) + global.window_width / 2 - (1024 / 2 - xstart);
	    y = camera_get_view_y(view_camera[0]) + ystart;
	    if (collision_point(mouse_x, mouse_y, id, true, false)) {
	        draw_sprite_ext(spr_none, 0, x, y,1,1,0,c_gray,1);
	    }
	    else{
	        draw_sprite(spr_none, 0, x, y);
	    }
	break;
}
	