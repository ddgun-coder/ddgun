/// @description Insert description here
// You can write your code in this editor
if (variable_instance_exists(id, "surf")) {
	if (surface_exists(surf)) {
		surface_free(surf);
	}
}