/// @description Insert description here
// You can write your code in this editor
if (other.effect = false) {
	if (other.team == global.team) {
		prt_val_add(Val.mp, 10);
		instance_destroy(other.id);
	}
}