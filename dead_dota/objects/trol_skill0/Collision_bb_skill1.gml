if (sturn <= 0 and other.alarm[1] == -1) {
   image_angle = other.image_angle - 90;
   var xl = lengthdir_x(24, image_angle);
   var yl = lengthdir_y(24, image_angle);
   hspeed = xl;
   vspeed = yl;
   sturn = 40;
   cid_id = other.cid_id;
   if (other.cid_id == global.my_cid_id) {
	  achi_get_if(1);
   }
}