if (windows) {
	draw_set_font(font1);
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_sprite_ext(spr_shopbar, windows_index, xstart, ystart, 1, 1, 0, -1, 1);
	draw_set_font(font0);
	draw_set_color(make_color_rgb(254, 215, 100));
    draw_text(xstart + 50, ystart + 45, "좌클릭 - 아이템 구매");
	draw_text(xstart + 50, ystart + 62, "같은 종류의 아이템을 2개이상 구매할 수 없습니다.");
	draw_set_font(font1);
}