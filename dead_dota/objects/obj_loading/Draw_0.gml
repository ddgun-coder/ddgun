/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_load);
draw_sprite(spr_loading_bar, 0, x, y);
draw_sprite_part(spr_loading_bar, 1, 0, 0, 512 * (count / count_max), 64, x, y);
draw_text(x, y + 70, "tip : 모두 로드하기 싫으면 ESC버튼 누르고있으면 됨.");





