/// @description Insert description here
// You can write your code in this editor
if (surface_exists(surf)) {
	surface_free(surf);
}
buffer_delete(buff_fast);
buffer_delete(buff_chat);
buffer_delete(buff_area);