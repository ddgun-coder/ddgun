/// @description Insert description here
// You can write your code in this editor
if (dis > 0) {
	dis -= 1;	
}
else {
	dis = 0;	
}
x -= lengthdir_x(dis, dir);
y -= lengthdir_y(dis, dir);
x = round(x);
y = round(y);