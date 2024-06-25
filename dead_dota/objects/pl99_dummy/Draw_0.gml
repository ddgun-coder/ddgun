

var footL_x = x + lengthdir_x(-20 + left_foot_deltax, YA) + lengthdir_x(17 + left_foot_deltay, YA + 270);
var footL_y = y + lengthdir_y(-20 + left_foot_deltax, YA) + lengthdir_y(17 + left_foot_deltay, YA + 270);
var footR_x = x + lengthdir_x(20 + right_foot_deltax, YA) + lengthdir_x(17 + right_foot_deltay, YA + 270);
var footR_y = y + lengthdir_y(20 + right_foot_deltax, YA) + lengthdir_y(17 + right_foot_deltay, YA + 270);
var armL_x = x + lengthdir_x(-20 + left_arm_deltax, YA) + lengthdir_x(left_arm_deltay, YA + 270);
var armL_y = y + lengthdir_y(-20 + left_arm_deltax, YA) + lengthdir_y(left_arm_deltay, YA + 270);
var armR_x = x + lengthdir_x(20 + right_arm_deltax, YA) + lengthdir_x(right_arm_deltay, YA + 270);
var armR_y = y + lengthdir_y(20 + right_arm_deltax, YA) + lengthdir_y(right_arm_deltay, YA + 270);

if (live =0) {
	draw_sprite_ext(spr_rip,0,x,y,1,1,YA,-1,1);//사망 부분 
}

if (live = 1) {
draw_sprite_ext(global.foot, 0, footL_x, footL_y, left_foot_xscale, left_foot_yscale, left_foot_YA, -1, 1);//왼발
draw_sprite_ext(global.foot, 0, footR_x, footR_y, right_foot_xscale, right_foot_yscale, right_foot_YA, -1, 1);//오른발
draw_sprite_ext(global.arm, 0, armL_x, armL_y, left_arm_xscale, left_arm_yscale, left_arm_YA, -1, 1);//왼손
draw_sprite_ext(global.arm, 0, armR_x, armR_y, right_arm_xscale, right_arm_yscale, right_arm_YA, -1, 1);//오른손
}//팔
if (live != 2)
{
	if (sturn = 0)
	{
		switch (face_variable)
		{
			case 0:
				draw_sprite_ext(global.face,0,x,y,1,1,YA,color,1);
			break;
			case 1:
				draw_sprite_ext(spr_hunt_face,-1,x,y,1,1,YA,color,1);
			break;
		}
	
	}
	else 
	{
			draw_sprite_ext(spr_face_hurt,0,x,y,1,1,YA,-1,1);
	}//얼굴
draw_sprite_ext(spr_hat1,4,x,y,1,1,YA,color,1);// 모자
}
if (frame_level_up =1) {
	draw_sprite_ext(spr_level_up,-1,x,y,1,1,0,-1,1);
}//레벨 업 표시
if (spr_armr_more != spr_none or spr_arml_more != spr_none)
{
	var armL_more_x = armL_x + lengthdir_x(-spr_arm_morex, left_arm_YA) + lengthdir_x(spr_arm_morey, left_arm_YA + 270);
	var armL_more_y = armL_y + lengthdir_y(-spr_arm_morex, left_arm_YA) + lengthdir_y(spr_arm_morey, left_arm_YA + 270);
	var armR_more_x = armR_x + lengthdir_x(spr_arm_morex, right_arm_YA) + lengthdir_x(spr_arm_morey, right_arm_YA + 270);
	var armR_more_y = armR_y + lengthdir_y(spr_arm_morex, right_arm_YA) + lengthdir_y(spr_arm_morey, right_arm_YA + 270);
	draw_sprite_ext(spr_armr_more, spr_arm_more_num, armR_more_x, armR_more_y, big_val, big_val, right_arm_YA,-1,1);
	draw_sprite_ext(spr_arml_more, spr_arm_more_num, armL_more_x, armL_more_y, big_val, big_val, left_arm_YA,-1,1);
}//추가 팔 그래픽
if (effect_index >= 0)
{
	draw_sprite_ext(effect_index, effect_num, x, y, big_val, big_val, temp_YA,-1,1);
}//추가 효과 그래픽
draw_sprite_part(spr_hp,0,0,0,(hp/m_hp)*58,4,x-28,y-44);//작은 채력바

if (mine_say_time > 0) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_color(c_white)
	draw_text(x,y - 80 , mine_say);
}//캐릭터위에 말

if (live = 1) {
		if (sturn > 0) {
			draw_sprite_ext(spr_star, star_frame, x, y, 1, 1, YA, -1, 1);
			if (star_frame == 1) {
				if (star_frame_s == 0)
				{
					star_frame = 0;
					star_frame_s = 5;
				}
			}
			else
			{
				if (star_frame_s == 0)
				{
					star_frame = 1;	
					star_frame_s = 5;
				}
			}
		
			if (star_frame_s > 0) {
				star_frame_s -= 1;
			}
		}
	}
	if (live = 2)
	{
		draw_sprite(spr_blood, 0, x, y);	
	}

draw_set_color(c_yellow);
draw_text(x,y+32,"■ 캐른 ■");//이름
draw_set_halign(fa_center);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white)