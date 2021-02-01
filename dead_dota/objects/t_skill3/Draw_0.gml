/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_red);
draw_text(testing.x, testing.y + 40, "남은시간:" + string(alarm[1] / 40) + "초");
draw_arrow(testing.x, testing.y, x, y, 10);