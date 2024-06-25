if(obj_snowshop.windows == true) {
	if (global.hat == spr_hat72) {
        if (testing.level > 2) {
        draw_sprite(spr_snowshop_item, 9, xstart, ystart);
		}
	}
}
if (testing.level > 2) {
    if(obj_snowshop.windows == true) {
         if (collision_point(mouse_x, mouse_y, obj_snowshop_item10, true, false)) {
	     draw_sprite_ext(spr_snowshop_item, 9, xstart, ystart,1,1,0,c_gray,1);
         draw_set_font(font1)
         draw_set_color(c_black)
         draw_text_bold(obj_snowshop_item10.xx + 33, obj_snowshop_item10.yy + 5, "초기화");
         draw_set_color(c_white)
         draw_text(obj_snowshop_item10.xx + 33,obj_snowshop_item10.yy + 5, "초기화");
         draw_set_font(font1)
        }
    }
}