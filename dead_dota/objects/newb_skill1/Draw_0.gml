for (var i = 0; i < number; i++) {
   draw_sprite_ext(sprite_index, array_index[i], array_x[i], array_y[i], image_xscale, image_yscale, YA, c_white, (number - i / 2) / number - 0.5);
}
draw_set_alpha(1)
draw_self();
















