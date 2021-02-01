/// @description Insert description here
// You can write your code in this editor
if (other.team == global.team) {
	prt_val_add(Val.mp, 100);
	instance_destroy(other.id);
}