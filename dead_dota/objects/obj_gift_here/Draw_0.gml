/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_green);
draw_text(testing.x, testing.y + 40, "남은시간:" + string(alarm[0] / 40) + "초");
draw_arrow(testing.x, testing.y, x, y, 10);
draw_set_color(c_white)