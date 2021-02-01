/// @description Insert description here
// You can write your code in this editor
 var mind = 500;
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
var ida = instance_create_depth(x, y, -100, pota_skill2);
ida.team = team;
ida.cid = cid;
ida.cid_id = cid_id;
ida.YA = image_angle + 90;
alarm[3] = 160;