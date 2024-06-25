arm_all_normal();
arm_type = "attack"
a_possible = true
arm_type_more = "go 90";
a_cooltime = 15;
left_foot_deltay += 10;
right_foot_deltay -= 3;
spin_scale = 1.8
d_attack_type = spr_sangbow
all_spin_limit = 360
all_spin = 1
var t = instance_create_depth(x, y, depth, pota_skill31_back1)
server78_create_instace(gun_skill3_ex, x,y)
t.YA = YA
temp_YA = YA;
/*a_a_cooltime = 12
var minind = testing;
var mind = 4096;
counter = 0;
for(var i = 1; i < 24; i++) {
	var obj = global.cid_array[i];
	if (obj.team != global.team) {
		if (obj.x > 0 and obj.y > 0) { 
			var dis = distance_to_object(obj)
			if (mind > dis) {
				mind = dis
				minind = obj;
			}
		}
	}
}
if (minind != 0) {
	var ad = angle_difference(YA2, point_direction(x, y, minind.x, minind.y) + 90);
	if (abs(ad) > 15) {
		all_YA_change_delta2((ad - 90) / 1);
	}
	else {
		all_YA_change2(point_direction(x, y, minind.x, minind.y) + 90);	
	}
}
