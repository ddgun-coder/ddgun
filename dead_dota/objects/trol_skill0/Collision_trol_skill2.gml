image_angle += 10;
var speed_val = point_distance(0, 0, hspeed, vspeed);
var xl = lengthdir_x(speed_val, image_angle);
var yl = lengthdir_y(speed_val, image_angle);
hspeed = xl;
vspeed = yl;