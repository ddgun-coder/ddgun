var footL_x = x + lengthdir_x(-20 + left_foot_deltax, YA) + lengthdir_x(17 + left_foot_deltay, YA + 270);
var footL_y = y + lengthdir_y(-20 + left_foot_deltax, YA) + lengthdir_y(17 + left_foot_deltay, YA + 270);
var footR_x = x + lengthdir_x(20 + right_foot_deltax, YA) + lengthdir_x(17 + right_foot_deltay, YA + 270);
var footR_y = y + lengthdir_y(20 + right_foot_deltax, YA) + lengthdir_y(17 + right_foot_deltay, YA + 270);
var armL_x = x + lengthdir_x(-20 + left_arm_deltax, YA) + lengthdir_x(left_arm_deltay, YA + 270);
var armL_y = y + lengthdir_y(-20 + left_arm_deltax, YA) + lengthdir_y(left_arm_deltay, YA + 270);
var armR_x = x + lengthdir_x(20 + right_arm_deltax, YA) + lengthdir_x(right_arm_deltay, YA + 270);
var armR_y = y + lengthdir_y(20 + right_arm_deltax, YA) + lengthdir_y(right_arm_deltay, YA + 270);

draw_sprite_ext(foot, 0, footL_x, footL_y, left_foot_xscale, left_foot_yscale, YA, -1, 1);//왼발
draw_sprite_ext(foot, 0, footR_x, footR_y, right_foot_xscale, right_foot_yscale, YA, -1, 1);//오른발
draw_sprite_ext(arm, 0, armL_x, armL_y, left_arm_xscale, left_arm_yscale, YA, -1, 1);//왼손
draw_sprite_ext(arm, 0, armR_x, armR_y, right_arm_xscale, right_arm_yscale, YA, -1, 1);//오른손

draw_sprite_ext(cid_id.face,0,x,y,1,1,YA,color,1);
draw_sprite_ext(cid_id.hat,cid_id.hat_frame,x,y,1,1,YA,color,1);// 모자
draw_sprite_ext(cid_id.spr_armr_more, cid_id.spr_arm_more_num, cid_id.armR_more_x + x, cid_id.armR_more_y + y, big_val, big_val, cid_id.right_arm_YA,-1,1);
draw_sprite_ext(cid_id.spr_arml_more, cid_id.spr_arm_more_num, cid_id.armL_more_x + x, cid_id.armL_more_y + y, -big_val, big_val, cid_id.left_arm_YA,-1,1);
draw_sprite_ext(cid_id.effect_index, cid_id.effect_index_num, x, y, big_val, big_val, YA,-1,1);
draw_sprite_part(spr_hp,5,0,0, 58,4,x-28,y-44);
draw_sprite_part(spr_hp,0,0,0,(hp/100)*58,4,x-28,y-44);//작은 채력바
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
draw_text(x,y + 32,"■ ??? ■");//이름