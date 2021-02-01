arm_all_normal()
arm_type = "attack"
spr_armr_more = spr_bigsaw;
spr_arml_more = spr_bigsaw;
right_arm_YA = YA - 180;
left_arm_YA = YA - 180;
left_arm_xscale = -1;
right_arm_xscale = 1;
a_cooltime = 13 + round(big_val * 2);
server77_equal(serve_val.left_arm_xscale, left_arm_xscale, buffer_s8)
server77_equal(serve_val.right_arm_xscale, right_arm_xscale, buffer_s8)
var minind = testing;
var maxd = 0;
for(var i = 1; i < 24; i++) {
	var obj = global.cid_array[i];
	if (obj.team != global.team) {
		if (obj.x > 0 and obj.y > 0) {
			if (!place_meeting(obj.x, obj.y, hurt_zone)) {
				var dis = distance_to_object(obj)
				if (maxd < dis) {
					maxd = dis
					minind = obj;
				}
			}
		}
	}
}
x = minind.x + lengthdir_x(35 * big_val, YA + 90);
y = minind.y + lengthdir_y(35 * big_val, YA + 90);