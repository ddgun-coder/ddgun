draw_set_halign(fa_left)
draw_set_font(font1)
draw_set_color(c_black);
draw_text_bold(x, y, "이 부분은 체력이야 0 이되면,\n넌 사망하지");
draw_set_color(c_red)
draw_text(x,y,"이 부분은 체력이야 0 이되면,\n넌 사망하지")
draw_set_color(c_black);
draw_text_bold(x + 64 * 4,y , "이 부분은 마나야. \n이것으로 스킬을 써 적을 죽일 수있어,\n[ D ] 를 눌러 볼래?");
draw_set_color(c_aqua)
draw_text(x + 64 * 4,y ,"이 부분은 마나야. \n이것으로 스킬을 써 적을 죽일 수있어.\n[ D ] 를 눌러 볼래?")
draw_set_color(c_black);
draw_text_bold(x + 64 * 8 - 16,y , "이건 스테미나야 , \n이게 있어야 S키로 달리기를 할 수있어 \n당연하게도 스테미너가 0 되면 달릴 수 없어");
draw_set_color(c_orange)
draw_text(x + 64 * 8 - 16,y ,"이건 스테미나야 , \n이게 있어야 S키로 달리기를 할 수있어 \n당연하게도 스테미너가 0 되면 달릴 수 없어")
draw_set_halign(fa_center)
draw_set_color(c_black);
draw_text_bold(x + 64 * 6, y + 68 , "적을 때리거나 아군에게 도움을 주면  EXP를 얻는단다,\n 일정량의 EXP를 얻으면 너의 레벨이 올라가");
draw_set_color(c_lime)
draw_text(x + 64 * 6,y + 68,"적을 때리거나 아군에게 도움을 주면  EXP를 얻는단다,\n 일정량의 EXP를 얻으면 너의 레벨이 올라가")
draw_set_color(c_black);
draw_text_bold(x + 64 * 6, y + 68 * 2, "이건 GI 라고 하는 것이야\n일부 강력한 스킬들은 이것을 소모해야지만 쓸 수있어,\n 강력한 스킬을 쓰는 만큼 쉽게 모이지 않아");
draw_set_color(c_white)
draw_text(x + 64 * 6,y + 68 *2 ,"이건 GI 라고 하는 것이야\n일부 강력한 스킬들은 이것을 소모해야지만 쓸 수있어,\n 강력한 스킬을 쓰는 만큼 쉽게 모이지 않아")
