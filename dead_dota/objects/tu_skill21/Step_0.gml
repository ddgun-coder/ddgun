/// @description Insert description here
// You can write your code in this editor
x = cid_id.x - lengthdir_x(40, t);
y = cid_id.y + lengthdir_x(30, t);
image_angle = t;
t += 7;
if (cid_id.sturn > 0) {
	instance_destroy();	
}