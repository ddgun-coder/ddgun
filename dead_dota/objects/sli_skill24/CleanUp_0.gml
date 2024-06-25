/// @description Insert description here
// You can write your code in this editor
var num = array_length(surface_array);
for (var i = 0; i < num; i++) {
	if (surface_exists(surface_array[i])) {
		surface_free(surface_array[i]);
	}
}