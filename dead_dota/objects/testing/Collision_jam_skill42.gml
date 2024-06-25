if (other.cid_id != global.my_cid_id) {
	if place_free(other.x, other.y) {
		x = other.x;
		y = other.y;
	}
}