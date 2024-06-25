/// @description Insert description here
// You can write your code in this edito
if (instance_exists(ski_skill3)) {
	with(ski_skill3) {
		if (cid_id == other.cid_id) {
			alarm[2] = 1;
		}
	}
}



instance_destroy();