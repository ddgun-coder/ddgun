image_speed = 0;
depth = -1200
var index;
face_array = [];
for (var i = 1; i < 60; i++) {
	index = asset_get_index("spr_face" + string(i))
	if (index != -1) {	
		array_push(face_array, index);
	}
}

size = array_length(face_array);
weight = 5;
my_layer = 0;
surf = -1;
height = ceil(size / weight);

function surf_made() {
   var offset = 0;
   if (surface_exists(surf)) {
	   surface_set_target(surf);
	   draw_clear_alpha(c_white, 0);
   }
   else {
	   surf = surface_create(78 * weight, 78 * height);
	   surface_set_target(surf);
   }
   for(var i = 0; i < weight; i++) {
      for(var j = 0; j < height; j++) {
         var index = j + i * height;
         if (index < size) {
			var draw_y = 78 * floor(index / weight) + 40;
            var draw_x = 78 * (index % weight) + 40;
            draw_set_alpha(1);
            draw_sprite(select, 0, draw_x, draw_y);
			draw_sprite(face_array[index], 0, draw_x, draw_y);
			var _ind = array_get_index(face_array, global.face);
			if (index == _ind) {
				draw_sprite(sprite_index, 1, draw_x, draw_y);	
			}
         }
      }
   }
   draw_set_alpha(1);
   surface_reset_target();
}