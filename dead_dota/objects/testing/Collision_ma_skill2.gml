/// @description Insert description here
// You can write your code in this editor
DMG(20, hunt_skill2, 60)
if (other.cid_id != global.my_cid_id) {
	if place_free(other.x, other.y) {
		x = other.x;
		y = other.y;
	}
}