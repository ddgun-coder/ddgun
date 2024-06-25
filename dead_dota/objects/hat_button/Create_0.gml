image_speed = 0;
depth = -1200
number = 0;
my_layer = 0;
surf = -1;
size = global.hat_limit;
weight = 5;
height = ceil(size / weight);
enum HAT_TYPE {
   all,
   maze,
   por,
   pow,
   sped,
   balan,
   suport,
   none
}
hat_real_index = [];
hat_type = [
   HAT_TYPE.balan, HAT_TYPE.balan, HAT_TYPE.suport, HAT_TYPE.sped, HAT_TYPE.pow, HAT_TYPE.maze, HAT_TYPE.maze, HAT_TYPE.por, HAT_TYPE.balan, HAT_TYPE.pow, HAT_TYPE.por, HAT_TYPE.sped, HAT_TYPE.maze, HAT_TYPE.maze, HAT_TYPE.por,
   HAT_TYPE.suport, HAT_TYPE.maze, HAT_TYPE.pow, HAT_TYPE.pow, HAT_TYPE.balan, HAT_TYPE.balan, HAT_TYPE.pow, HAT_TYPE.por, HAT_TYPE.maze, HAT_TYPE.none, HAT_TYPE.maze, HAT_TYPE.balan, HAT_TYPE.maze, HAT_TYPE.pow, HAT_TYPE.maze,
   HAT_TYPE.balan, HAT_TYPE.balan, HAT_TYPE.pow, HAT_TYPE.pow, HAT_TYPE.pow, HAT_TYPE.maze, HAT_TYPE.maze, HAT_TYPE.suport, HAT_TYPE.sped, HAT_TYPE.balan, HAT_TYPE.pow, HAT_TYPE.pow, HAT_TYPE.pow, HAT_TYPE.balan, HAT_TYPE.suport,
   HAT_TYPE.sped, HAT_TYPE.pow, HAT_TYPE.balan, HAT_TYPE.balan, HAT_TYPE.balan, HAT_TYPE.pow, HAT_TYPE.suport, HAT_TYPE.maze, HAT_TYPE.maze, HAT_TYPE.maze, HAT_TYPE.maze, HAT_TYPE.balan, HAT_TYPE.maze, HAT_TYPE.balan, HAT_TYPE.maze,
   HAT_TYPE.balan, HAT_TYPE.balan, HAT_TYPE.sped, HAT_TYPE.balan, HAT_TYPE.suport, HAT_TYPE.pow,  HAT_TYPE.suport,  HAT_TYPE.pow,  HAT_TYPE.balan,  HAT_TYPE.pow, HAT_TYPE.sped,  HAT_TYPE.balan,  HAT_TYPE.sped,  HAT_TYPE.sped,  HAT_TYPE.none
   
];
ban_array = [spr_hat76];//밴
real_index = array_create(100, -1);
ban_len = array_length(ban_array);
for (var i = array_length(hat_type); i < 100; i++) {
   hat_type[i] = HAT_TYPE.none;
}

function set_hat_real_index() {
	hat_real_index = [];
	for (var i = 0; i < global.hat_limit; i++) {
		if (global.hat_num == 0 or hat_type[i] == global.hat_num) {
			if (!array_contains(ban_array, global.hat_array[i + 1])) {
				array_push(hat_real_index, i);		
			}
		}
	}
	size = array_length(hat_real_index);
}
function surf_made() {
   var offset = 0;
   set_hat_real_index();
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
            var is_here = false;
			index = hat_real_index[index] + 1;

            real_index[offset] = index;
            var draw_y = 78 * floor(offset / weight) + 40;
			var draw_x = 78 * (offset % weight) + 40;
			offset++;
            
            draw_set_alpha(1);
            draw_sprite(select, 0, draw_x, draw_y);
            if (global.hat_array[index] == spr_hat6 or global.hat_array[index] == spr_hat47) {
               draw_sprite_ext(global.hat_array[index], 0, draw_x, draw_y, 0.4, 0.4, 0, c_white, image_alpha);
            }
            else {
               draw_sprite(global.hat_array[index], 0, draw_x, draw_y);      
            }
            if (global.ban_list[index]) {
               draw_sprite(spr_x, 0, draw_x, draw_y);
            }
			var _ind = array_get_index(global.hat_array, global.hat);
			if (index == _ind) {
				draw_sprite(sprite_index, 1, draw_x, draw_y);	
			}
         }
      }
   }
   draw_set_alpha(1);
   surface_reset_target();
}