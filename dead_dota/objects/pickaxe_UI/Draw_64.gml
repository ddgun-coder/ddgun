if (windows = true)
{
	draw_set_font(font0);
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_sprite_ext(spr_shop, 0, xstart , ystart , 1, 1, 0, -1, 0.75);
	draw_sprite(index, 0, xstart  + 123, ystart  +105);
	switch(index)
	{
		case spr_pickaxe1 :
			draw_text(x  + 191, y  + 15, "이름: 기본 곡괭이");
			draw_text(x  + 191, y  + 110, "효과: 1강마다 철확률 + 0.6%" + "\n" 
				        + "      1강마다 구리확률 - 0.6%");
			draw_text(x  + 15, y  +187, "설명: 도타인은 싸워야한다. 곡괭이를 들고 평화를 외치지 말라" + "\n"
						+ "      평화를 외치는 사람을 때려라. 그들이 진짜 원하는건 평화가아닌" + "\n"
						+ "      돈일 것이다.");
		break;
		case spr_pickaxe2 :
			draw_text(x  + 191, y  +15, "이름: 다이아 곡괭이");
			draw_text(x  + 191, y  + 110, "효과: 1강마다 금확률 + 0.2%" + "\n" 
				        + "      1강마다 도타볼확률 - 0.2%");
			draw_text(x  + 15, y  +187, "설명: 먼 옛날 우진조의 막강한 물자는 이 곡괭이라고 덕분이라고 한다." + "\n"
						+ "      그러나 오다누조와의 패배이후 더이상 쓰이진 않았다고 한다." + "\n"
						+ "      상당히 무거워서 마나가 더필요하다.(25)");
		break;
		case spr_pickaxe3 :
			draw_text(x  + 191, y  +15, "이름: 가벼운 곡괭이");
			draw_text(x  + 191, y  + 110, "효과: 2강마다 필요한 마나 1씩감소.")
			draw_text(x  + 15, y  +187, "설명: 사실 막대가 더 강하다");
		break;
		case spr_pickaxe4 :
			draw_text(x  + 191, y  +15, "이름: 최초의 곡괭이");
			draw_text(x  + 191, y  + 110, "효과: 기본 구리10배, 1강마다 +10구리.")
			draw_text(x  + 15, y  +187, "설명: 처음 만들어졌을때 구리만 필요한 사회였기에 " + "\n"
				        +"       구리만 많이 나온다.");
		break;
		case spr_pickaxe5 :
			draw_text(x  + 191, y  +15, "이름: 고무 망치");
			draw_text(x  + 191, y  + 110, "효과: 광물2배, 1강마다 철 +1");
			draw_text(x  + 15, y  +187, "설명: 척살모들은 처음에 고무망치를 이용한다." + "\n"
				        +"       스테미나가 필요하다(50)");
		break;
		case spr_pickaxe6 :
			draw_text(x  + 191, y  +15, "이름: 최첨단 바로 부셔버리기2000");
			draw_text(x  + 191, y  + 110, "효과: 광물3배, 1강마다 필요애너지 -1");
			draw_text(x  + 15, y  +187, "설명: 베터리로 작동하며 엄청나게 좋지만, 충전해야한다." + "\n"
				        + "      베터리는 사용자의 기를 이용한다.");
		break;
		case spr_pickaxe7 :
			draw_text(x  + 191, y  +15, "이름: 피의 곡괭이");
			draw_text(x  + 191, y  + 110, "효과: 광물3배, 9강시 8씩깍임");
			draw_text(x  + 15, y  +187, "설명: 광질을 할때마다 체력이 9씩 깍인다. 죽을수도 있으니 주의");
		break;
		case spr_pickaxe8 :
			draw_text(x  + 191, y  +15, "이름: 이괭곡 본기");
			draw_text(x  + 191, y  + 110, "효과: 특별한 것을 얻을수 있다.");
			draw_text(x  + 15, y  +187, "설명: 토마소 히로가 처음 발견했다는 소문이 있지만 진짜인지는" + "\n"
				        +"       모른다. 마나가 아닌 기를 이용해서 광질을 한다.");
		break;
		case spr_pickaxe9 :
			draw_text(x  + 191, y  +15, "이름: ???");
			draw_text(x  + 191, y  + 110, "효과: 1강마다 도타볼 범위 +1");
			draw_text(x  + 15, y  +187, "설명: 높은 확률로 도타볼이나오는 사기적인 곡괭이.");
		break;
	}
	draw_text(x  + 191, y  +50, "현제강화:" + string(global.pickaxe_num[index - spr_pickaxe1]));
	draw_text(x  + 15, y  + 270, "강화주문서:" + string(testing.pickaxe_up));
}