/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6CC682CE
/// @DnDArgument : "code" " var mind = 2000;$(13_10)for(var i = 1; i < 24; i++) {$(13_10)	var obj = global.cid_array[i];$(13_10)	if (obj.team != team) {$(13_10)		if (obj.x > 0 and obj.y > 0) { $(13_10)			var dis = distance_to_object(obj)$(13_10)			if (mind > dis) {$(13_10)				mind = dis$(13_10)				minind = obj;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}$(13_10)var ida = instance_create_depth(x, y, -100, bb_skill3);$(13_10)ida.team = team;$(13_10)ida.cid = cid;$(13_10)ida.cid_id = cid_id;$(13_10)ida.YA = image_angle;$(13_10)alarm[1] = 160;"
 var mind = 2000;
for(var i = 1; i < 24; i++) {
	var obj = global.cid_array[i];
	if (obj.team != team) {
		if (obj.x > 0 and obj.y > 0) { 
			var dis = distance_to_object(obj)
			if (mind > dis) {
				mind = dis
				minind = obj;
			}
		}
	}
}
var ida = instance_create_depth(x, y, -100, bb_skill3);
ida.team = team;
ida.cid = cid;
ida.cid_id = cid_id;
ida.YA = image_angle;
alarm[1] = 160;