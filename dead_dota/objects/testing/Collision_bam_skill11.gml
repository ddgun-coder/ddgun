/// @description Insert description here
// You can write your code in this editor
if (other.team == global.team) {
	if (other.eat) {
		hp += other.get_mp;
		instance_destroy(other.id);
	}
}