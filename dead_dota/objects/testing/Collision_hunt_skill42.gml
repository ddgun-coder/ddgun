var D = 0
var sturn_time = 200

view_visible[1] = false;
view_visible[0] = true;
obj_telescope_view.tele = false;
if (live = 1) {
	if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
		if (immune == false) {
			sturn = sturn_time;
			immune = false;
			invisible = false;
			alpha = 1;
			cli_alpha = 1;
			cur_attack = other.cid;
			server77_equal(serve_val.alpha, 1, buffer_bool)
			if (other.cid_id.buff_index == buff_nu2) {
				hp -= 0 * D;
			}
			else {
				hp -= D;
			}
			s_cooltime = 1
			arm_sturncooltime = 1 
			other_cid = other.cid;
			arm_type = "ouch";
			server202_sound(have_hit);
			other_cid = 0;
			var temp_id = instance_create_depth(x, y, 0, hunt_skill44);
			temp_id.cid_id = other.cid_id;
		}
	}
}