x = xx + camera_get_view_x(view_camera[0]) 
y = yy + camera_get_view_y(view_camera[0])

if (instance_exists(testing)) {
   if (global.hat == spr_hat59 and testing.level > 0) {
      var num = array_length(shop_button1.item);
      if (0 <= testing.clock_ui and testing.clock_ui < num) {
         var struct = shop_button1.item[testing.clock_ui];
         if (struct.sprite != noone) { 
			item_num = struct.what
            draw_sprite(struct.sprite, struct.sprite_ind, xstart - camera_get_view_x(view_camera[0]), ystart - camera_get_view_y(view_camera[0]));
         }
      }
   }
}

