draw_sprite_ext(global.foot, 0, x + lengthdir_x(-20 + left_foot_deltax, YA) + lengthdir_x(10 + left_foot_deltay, YA + 270), y + lengthdir_y(-20 + left_foot_deltax, YA) + lengthdir_y(10 + left_foot_deltay, YA + 270), left_foot_xscale, left_foot_yscale, left_foot_YA, -1, 1);//왼foot
draw_sprite_ext(global.foot, 0, x + lengthdir_x(20 + right_foot_deltax, YA) + lengthdir_x(10 + right_foot_deltay, YA + 270), y + lengthdir_y(20 + right_foot_deltax, YA) + lengthdir_y(10 + right_foot_deltay, YA + 270), right_foot_xscale, right_foot_yscale, right_foot_YA, -1, 1);//오른foot
draw_sprite(global.face, 0, x, y);
draw_sprite_ext(global.arm, 0, x + lengthdir_x(-20 + left_arm_deltax, YA) + lengthdir_x(left_arm_deltay, YA + 270), y + lengthdir_y(-20 + left_arm_deltax, YA) + lengthdir_y(left_arm_deltay, YA + 270), left_arm_xscale, left_arm_yscale, left_arm_YA, -1, 1);//왼손
draw_sprite_ext(global.arm, 0, x + lengthdir_x(20 + right_arm_deltax, YA) + lengthdir_x(right_arm_deltay, YA + 270), y + lengthdir_y(20 + right_arm_deltax, YA) + lengthdir_y(right_arm_deltay, YA + 270), right_arm_xscale, right_arm_yscale, right_arm_YA, -1, 1);//오른손
draw_sprite(global.hat, global.skin * 4, x, y);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_blue)
draw_text_bold(10 , 740 ,"gold:" + string(global.money))
draw_set_color(c_white);
draw_text(10 , 740 ,"gold:" + string(global.money));//돈 부분