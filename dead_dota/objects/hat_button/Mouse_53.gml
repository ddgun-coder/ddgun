if (hat_button_main.windows == 1)
{
   if (mouse_x > x - 32 and mouse_x < x + 78 * weight - 32) {
      if (mouse_y > y - 32 and mouse_y < y + 78 * 4 - 32) {
		 global.random_hat = false;
         var w = floor((mouse_x + 32 - x) / 78);
         var h = floor((mouse_y + 32 - y) / 78);
         var index = w + h * weight + my_layer * weight
         if (real_index[index] == -1) exit;
         scr_hat_change(real_index[index]);
         only_main.do_effect = true;
         global.skin = 0;
      }
   }
   if (point_in_rectangle(mouse_x, mouse_y, x + 325, y - 201, x + 355, y - 169)) {
		global.hat = spr_hat_rand;
		global.random_hat = true;
		only_main.do_effect = true;
   }
}

