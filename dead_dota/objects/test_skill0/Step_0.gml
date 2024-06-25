x += lengthdir_x(25 * cid_id.big_val, YA - 90);
y += lengthdir_y(25 * cid_id.big_val, YA - 90);
image_angle = YA;
image_xscale = cid_id.big_val * 1;
image_yscale = cid_id.big_val * 1;

var _dist = point_distance(x,y,other.x, other.y + 15)
var _dir = point_distance(x,y,other.x, other.y + 15)

if (!place_free(x, y)) {
   if (!place_meeting(x, y, cid_id)) {
		  motion_add(_dir,_dist)
   }
}
