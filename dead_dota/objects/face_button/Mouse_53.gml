if (hat_button_main.windows == 4)
{
   if (mouse_x > x - 40 and mouse_x < x + 78 * weight - 40) {
      if (mouse_y > y - 40 and mouse_y < y + 78 * 4 - 40) {
         var w = floor((mouse_x + 40 - x) / 78);
         var h = floor((mouse_y + 40 - y) / 78);
         var index = w + h * weight + my_layer * weight;
		 if (index < size) { 
			 global.face = face_array[index];
	         only_main.do_effect = true;
		 }
      }
   }
   if (point_in_rectangle(mouse_x, mouse_y, x + 325, y - 201, x + 355, y - 169)) {
		global.face = face_array[irandom(size - 1)];
		only_main.do_effect = true;
   }
}

