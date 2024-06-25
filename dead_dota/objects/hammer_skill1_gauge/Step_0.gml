/// @description Insert description here
// You can write your code in this editor
if (prog <= max_time) {
	prog++;
}
else {
	image_alpha -= 0.05;	
}
if (image_alpha <= 0) {
	instance_destroy();	
}
image_index = min(floor(prog / max_time * image_number), image_number - 1);
