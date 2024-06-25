/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_escape)) {
	room_goto(room_main);	
}

if (count < count_max) {
	texture_prefetch(tex_array[count]);
	count++;
}
else {
	room_goto(room_main);	
}