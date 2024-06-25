/// @description Insert description here
// You can write your code in this editor
if (surface_exists(surf)) {
	surface_free(surf);
}
var num = array_length(card_array);
for (var i = 0; i < num; i++) {
	delete card_array[i];
}