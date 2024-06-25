var footL_x = x + (lengthdir_x(-20 + left_foot_deltax, YA) + lengthdir_x(10 + left_foot_deltay, YA + 270));
var footL_y = y + (lengthdir_y(-20 + left_foot_deltax, YA) + lengthdir_y(10 + left_foot_deltay, YA + 270));
var footR_x = x + (lengthdir_x(20 + right_foot_deltax, YA) + lengthdir_x(10 + right_foot_deltay, YA + 270));
var footR_y = y + (lengthdir_y(20 + right_foot_deltax, YA) + lengthdir_y(10 + right_foot_deltay, YA + 270));
var armL_x = x + (lengthdir_x(-20 + left_arm_deltax, YA) + lengthdir_x(left_arm_deltay, YA + 270));
var armL_y = y + (lengthdir_y(-20 + left_arm_deltax, YA) + lengthdir_y(left_arm_deltay, YA + 270)) ;
var armR_x = x + (lengthdir_x(20 + right_arm_deltax, YA) + lengthdir_x(right_arm_deltay, YA + 270));
var armR_y = y + (lengthdir_y(20 + right_arm_deltax, YA) + lengthdir_y(right_arm_deltay, YA + 270));
var hat_x = x + lengthdir_x(0, YA - 90);
var hat_y = y + lengthdir_y(0, YA - 90);

draw_sprite_ext(foot, 0, footL_x, footL_y, left_foot_xscale, left_foot_yscale, left_foot_YA, color,image_alpha);//왼발
draw_sprite_ext(foot, 0, footR_x, footR_y, right_foot_xscale, right_foot_yscale, right_foot_YA, color, image_alpha);//오른발
draw_sprite_ext(arm, 0, armL_x, armL_y, left_arm_xscale, left_arm_yscale, left_arm_YA, color,image_alpha);//왼손
draw_sprite_ext(arm, 0, armR_x, armR_y, right_arm_xscale, right_arm_yscale, right_arm_YA, color,image_alpha);//오른손


if (spr_armr_more != spr_none or spr_arml_more != spr_none)
{
	var armL_more_x = armL_x + lengthdir_x(-spr_arm_morex, left_arm_YA) + lengthdir_x(spr_arm_morey, left_arm_YA + 270);
	var armL_more_y = armL_y + lengthdir_y(-spr_arm_morex, left_arm_YA) + lengthdir_y(spr_arm_morey, left_arm_YA + 270);
	var armR_more_x = armR_x + lengthdir_x(spr_arm_morex, right_arm_YA) + lengthdir_x(spr_arm_morey, right_arm_YA + 270);
	var armR_more_y = armR_y + lengthdir_y(spr_arm_morex, right_arm_YA) + lengthdir_y(spr_arm_morey, right_arm_YA + 270);
	draw_sprite_ext(spr_armr_more, spr_arm_more_num, armR_more_x, armR_more_y, -big_val, big_val, right_arm_YA,-1,image_alpha);
	draw_sprite_ext(spr_arml_more, spr_arm_more_num, armL_more_x, armL_more_y, big_val, big_val, left_arm_YA,-1,image_alpha);
}//추가 팔 그래픽

draw_sprite_ext(face_array[face],0,x,y,1,1,YA,color,image_alpha); 

draw_sprite_ext(spr_hat74, random_level, hat_x, hat_y, 1 * big_val, big_val,YA,color,image_alpha);//모자

draw_set_color(c_black);
draw_text_bold(x - 44, y + 32, "■ 스키 동호회 ■");

if (cid_id.hat != spr_ehat4 and cid_id.hat != spr_level5_hat10) {
	switch (cid_id.team) {
		case 0 : 
			draw_set_color(c_red);
			draw_text(x - 44, y + 32, "■ 스키 동호회 ■")
		break;
		default : 
			draw_set_color(c_yellow);
			draw_text(x - 44, y + 32, "■ 스키 동호회 ■")
		break;
	}
}//이름
