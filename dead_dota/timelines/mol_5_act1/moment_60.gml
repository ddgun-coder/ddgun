for(var i = 1; i < 24; i++) {
	var obj = global.cid_array[i];
	if (obj.cid != global.my_cid_id) {
		if (obj.x > 0 and obj.y > 0) { 
			if(obj.sturn >= 0) {
				var dis = distance_to_object(obj)
				if (push < dis) {
					x = obj.x;
					y = obj.y;
					arm_all_normal();
					all_spin = 1;
					temp_YA = YA;
					spr_armr_more = spr_mol;
					right_arm_YA = 0;
					left_arm_YA = 0 - 90;
					all_spin_limit = 360;
					server78_create_instace(mol_skill51, x + lengthdir_x(35, YA - 90), y + lengthdir_y(35, YA - 90));
					break;
				}
			}
		}
	}
}