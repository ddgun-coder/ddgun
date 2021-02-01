/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 59673755
/// @DnDArgument : "code" "arm_all_normal()$(13_10)arm_type = "attack"$(13_10)a_cooltime = 4;$(13_10)var minind = 0;$(13_10)var mind = 384;$(13_10)for(var i = 1; i < 24; i++) {$(13_10)	var obj = testing0 + i;$(13_10)	if (obj.team != global.team) {$(13_10)		if (global.my_cid != i) {$(13_10)			if (obj.x > 0 and obj.y > 0) { $(13_10)				var dis = distance_to_object(obj)$(13_10)				if (mind > dis) {$(13_10)					mind = dis$(13_10)					minind = obj;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}$(13_10)x = minind.x;$(13_10)y = minind.y + 15;"
arm_all_normal()
arm_type = "attack"
a_cooltime = 4;
var minind = 0;
var mind = 384;
for(var i = 1; i < 24; i++) {
	var obj = testing0 + i;
	if (obj.team != global.team) {
		if (global.my_cid != i) {
			if (obj.x > 0 and obj.y > 0) { 
				var dis = distance_to_object(obj)
				if (mind > dis) {
					mind = dis
					minind = obj;
				}
			}
		}
	}
}
x = minind.x;
y = minind.y + 15;