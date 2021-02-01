DMG(10, hunt_skill2, 60)
if (global.team != other.team or (other.team == 2 and other.cid == global.my_cid)) {
	x = other.x - lengthdir_x(50 * big_val, YA - 90);
	y = other.y - lengthdir_y(50 * big_val, YA - 90);
}