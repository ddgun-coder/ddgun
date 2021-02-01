arm_all_normal();
left_goto_YA = YA + 225;
right_goto_YA = YA;
arm_spin_able = 1;
arm_spin_speed = 4;
a_cooltime = 195;
arm_type = "attack"
server202_sound(gather_sound);
cancle_able = true;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
if (global.hat != spr_hat52 and global.hat != spr_ehat4) {
	hp -= 70;
}