arm_all_normal()
arm_movement(5,-1,10,-4)
foot_movement(0,0,-4,4)
a_possible = 0;
switch(global.skin) {
	case 0:
       effect_index = effect_hunter3;
    break;
	case 1:
       effect_index = effect_hunter3;
    break;
	case 2:
		effect_index = effect_hunter32;
	break;
	case 3:
       effect_index = spr_hunt_bow3;
	break;
	default:
	   effect_index = effect_hunter3;
	break;
}
arm_type = "attack"
arm_type_more = "temp_YA_async"
temp_YA = YA;
view_visible[0] = false;
view_visible[1] = true;
view_where = 1;
obj_telescope_view.tele = true;
obj_telescope_view.go_pixel = 1250;
obj_telescope_view.go_to = 440;
cancle_able = true;
instance_create_depth(x, y, -1000, hunt_skill33);
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
server202_sound(hunt_3_ready);