if (testing.level > 1) {
if(obj_snowshop.windows == true) {
switch (global.hat) {
    case spr_hat72 :
	    switch (testing.w_attack_type) {
		    case spr_mod2:
                draw_sprite(spr_snowshop_item1, 7, xstart, ystart);
			break;
			case spr_sangbrush :
                draw_sprite(spr_snowshop_item, 7, xstart, ystart);
			break;
			default :
                draw_sprite_ext(spr_snowshop_item, 7, xstart, ystart,1,1,0,c_gray,1);
		    break;
		    }
        break;
        }
	}
}
if (testing.level > 1) {
    if(obj_snowshop.windows == true) {
        if (collision_point(mouse_x, mouse_y, obj_snowshop_item8, true, false)) {
			draw_sprite_ext(spr_snowshop_item, 7, xstart, ystart,1,1,0,c_gray,1);
         draw_set_font(font1)
         draw_set_color(c_black)
         draw_text_bold(obj_snowshop_item8.xx + 33, obj_snowshop_item8.yy + 5, "2연속 발사");
         draw_set_color(c_white)
         draw_text(obj_snowshop_item8.xx + 33,obj_snowshop_item8.yy + 5, "2연속 발사");
         draw_set_font(font1)
        }
    }
}