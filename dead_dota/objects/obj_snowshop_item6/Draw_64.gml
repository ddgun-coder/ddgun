if (testing.level > 0) {
if(obj_snowshop.windows == true) {
switch (global.hat) {
    case spr_hat72 :
	    switch (testing.q_attack_type) {
		    case spr_mod3:
                draw_sprite(spr_snowshop_item1, 5, xstart, ystart);
			break;
			case spr_sangbrush :
                draw_sprite(spr_snowshop_item, 5, xstart, ystart);
			break;
			default :
                draw_sprite_ext(spr_snowshop_item, 5, xstart, ystart,1,1,0,c_gray,1);
		    break;
		    }
        break;
        }
	}
}
if (testing.level > 0) {
    if(obj_snowshop.windows == true) {
        if (collision_point(mouse_x, mouse_y, obj_snowshop_item6, true, false)) {
			draw_sprite_ext(spr_snowshop_item, 5, xstart, ystart,1,1,0,c_gray,1);
         draw_set_font(font1)
         draw_set_color(c_black)
         draw_text_bold(obj_snowshop_item6.xx + 33, obj_snowshop_item6.yy + 5, "슬로우 효과")
         draw_set_color(c_white)
         draw_text(obj_snowshop_item6.xx + 33,obj_snowshop_item6.yy + 5, "슬로우 효과")
         draw_set_font(font1)
        }
    }
}