if (ready = false) {
	draw_set_font(font1)
    draw_set_color(c_black)
    draw_text_bold(ma_skill3_ex.x + 35, ma_skill3.y + 5, "누적 힐량: " + string(ma_power * 0.35));
    draw_set_color(c_white)
    draw_text(ma_skill3_ex.x + 35,ma_skill3.y + 5, " 누적 힐량: "+ string(ma_power * 0.35));
    draw_set_font(font1)
}
