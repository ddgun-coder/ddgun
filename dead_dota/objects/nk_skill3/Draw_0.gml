
draw_set_alpha(cid_id.alpha);
if (live = 1) {
draw_sprite_ext(cid_id.foot, 0, cid_id.footL_x + xx, cid_id.footL_y + yy, left_foot_xscale, left_foot_yscale, YA, -1, 1);//왼발
draw_sprite_ext(cid_id.foot, 0, cid_id.footR_x + xx, cid_id.footR_y + yy, right_foot_xscale, right_foot_yscale, YA, -1, 1);//오른발
draw_sprite_ext(cid_id.arm, 0, cid_id.armL_x + xx, cid_id.armL_y + yy, left_arm_xscale, left_arm_yscale, YA, -1, 1);//왼손
draw_sprite_ext(cid_id.arm, 0, cid_id.armR_x + xx, cid_id.armR_y + yy, right_arm_xscale, right_arm_yscale, YA, -1, 1);//오른손

}//팔
draw_sprite_ext(cid_id.face,0,x,y,1,1,YA,color,1);
draw_sprite_ext(spr_hat58,cid_id.hat_frame,x,y,1,1,YA,color,1);// 모자
draw_sprite_ext(cid_id.spr_armr_more, cid_id.spr_arm_more_num, cid_id.armR_more_x + x, cid_id.armR_more_y + y, big_val, big_val, cid_id.right_arm_YA,-1,1);
draw_sprite_ext(cid_id.spr_arml_more, cid_id.spr_arm_more_num, cid_id.armL_more_x + x, cid_id.armL_more_y + y, -big_val, big_val, cid_id.left_arm_YA,-1,1);
draw_sprite_ext(cid_id.effect_index, cid_id.effect_index_num, x, y, big_val, big_val, YA,-1,1);
draw_sprite_part(spr_hp,5,0,0, 58,4,x-28,y-44);
draw_sprite_part(spr_hp,0,0,0,(cid_id.hp/100)*58,4,x-28,y-44);//작은 채력바
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);
draw_text(x,y-60, "LV." + string(hat_frame + 1));
if (cid_id.hat != spr_ehat4 and cid_id.hat != spr_level5_hat10) {
	switch (cid_id.team) {
		case 0 : draw_set_color(c_red);
		break;
		case 1 : draw_set_color(c_yellow);
		break;
	}
}
draw_text(x,y + 32,"■ " + cid_id.name + " ■");//이름