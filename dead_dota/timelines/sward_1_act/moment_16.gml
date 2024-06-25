arm_all_normal()
a_possible = false;
server78_create_instace(sward_skill1, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90))
//arm_type_more = "sward_10"
arm_type = "attack"
arm_type_num = 0
cancle_able = true;
switch(global.skin) {
case 3:
	spr_armr_more = spr_holysward1;
break;
default:
	spr_armr_more = spr_new_sward1;
break;
}
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
seq_start(seq_sward2);