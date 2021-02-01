/// @description Insert description here
// You can write your code in this editor
image_xscale += 0.02
image_yscale += 0.02
image_angle += 6
image_alpha -= 0.01
y -= 4
if (image_alpha < 0) {
	instance_destroy()	
}