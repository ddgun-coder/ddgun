/// @description Insert description here
// You can write your code in this editor
with (obj_skill_roulette) {
	if (cid == other.cid) {
		rolling_time = 0;
		result = other.result / 10;
		roll_down = false;
		rolling = true;
		coin_inseted = true;
		image_angle = 0;
	}
}
instance_destroy();