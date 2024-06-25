x = round(x);
y = round(y);
if (seq_to_var == -1) {
	with (testing) {
		other.seq_to_var = method(self, seq_to_variable);
	}
}
surf_set_global(foot, face, arm, hat, skin);
if (creper_die == 0) {
	if (seq == -1) {
		footL_x = surf_xoffset + (-20 + left_foot_deltax) * big_val;
		footL_y = surf_yoffset + (10 + left_foot_deltay) * big_val;
		footR_x = surf_xoffset + (20 + right_foot_deltax) * big_val;
		footR_y = surf_yoffset + (10 + right_foot_deltay) * big_val;
		armL_x = surf_xoffset + (-20 + left_arm_deltax) * big_val;
		armL_y = surf_yoffset + (left_arm_deltay) * big_val;
		armR_x = surf_xoffset + (20 + right_arm_deltax) * big_val;
		armR_y = surf_yoffset + right_arm_deltay * big_val;
		hat_x = surf_xoffset;
		hat_y = surf_yoffset + charge * 15 + face_delta
		face_x = surf_xoffset + face_delta_x;
		face_y = surf_yoffset + face_delta + face_delta_y;
		arm_moreR_YA = right_arm_YA;
		arm_moreL_YA = left_arm_YA;
		armL_more_x = armL_x + lengthdir_x(-spr_arm_morex, left_arm_YA) + lengthdir_x(spr_arm_morey, left_arm_YA + 270);
		armL_more_y = armL_y + lengthdir_y(-spr_arm_morex, left_arm_YA) + lengthdir_y(spr_arm_morey, left_arm_YA + 270);
		armR_more_x = armR_x + lengthdir_x(spr_arm_morex, right_arm_YA) + lengthdir_x(spr_arm_morey, right_arm_YA + 270);
		armR_more_y = armR_y + lengthdir_y(spr_arm_morex, right_arm_YA) + lengthdir_y(spr_arm_morey, right_arm_YA + 270);
		effect_x = surf_xoffset;
		effect_y = surf_yoffset;
		effect_YA = temp_YA;
	}
	else {
		seq_to_variable();
	}
}
else {
	creper_die--;
}
if (live =0) {
	draw_sprite_ext(spr_rip,0,x,y,1,1,YA,-1,1);//사망 부분 
}


var rot_x, rot_y;
draw_text(x, y - 55, string("live : {0}", live));
draw_text(x, y - 75, string("sturn :  {0}", sturn));
rot_x = surf_xoffset * cos(degtorad(-YA)) - surf_yoffset * sin(degtorad(-YA));
rot_y = surf_xoffset * sin(degtorad(-YA)) + surf_yoffset * cos(degtorad(-YA));
draw_surface_ext(surf, x - rot_x, y - rot_y, 1, 1, YA, color, 1);


if (frame_level_up =1) {
	draw_sprite_ext(spr_level_up,-1,x,y,1,1,0,-1,1);
}//레벨 업 표시
if (effect_index >= 0)
{
	draw_sprite_ext(effect_index, effect_num, x, y, big_val, big_val, temp_YA,-1,1);
}//추가 효과 그래픽
var delta_y = 44;
var per_y = 5;
draw_sprite_part(spr_hp,0,0,0,(hp/m_hp)*58,4,x - 28,y - delta_y);//작은 채력바
draw_sprite_part(spr_hp,1,0,0,(mana/m_mana)*58,4,x - 28,y - delta_y + per_y);//작은 채력바
draw_sprite_part(spr_hp,2,0,0,(stemina/m_stemina)*58,4,x - 28,y - delta_y + per_y * 2);//작은 채력바	

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
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_yellow);
draw_text(x,y + 32,"■ " + name + " ■");//이름
draw_set_halign(fa_center);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white)
if (halt) draw_sprite(spr_stop, 0, x, y);