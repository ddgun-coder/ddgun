if (other.image_alpha =1) {
	DMG(20, hunt_skill2, 60)
	other_cid = 0;

	if (other.cid_id != global.my_cid_id) {
		if place_free(other.x, other.y) {
			if(buff_index != spr_wing1 or shild != true) {
				x = other.x;
				y = other.y;
			}
		}
	}
}