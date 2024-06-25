/// @description Insert description here
// You can write your code in this editor
DMG(20, 25, 100, function() {
	server_create_instance_to(babo_spin_starter, x, y, other.cid);
	server_create_as(babo_spin_control, x, y);
	instance_destroy(other.id);
});













