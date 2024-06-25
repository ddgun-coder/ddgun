/*if(instance_exists(Skill_UI)) {
   if(Skill_UI.windows == true and Skill_UI.windows_index == 0)
{
    draw_set_color(c_dkgray);
    draw_text(x , y + 10, "[ D ] - " + name );
    draw_set_color(c_green);
    draw_text(x , y + 30, "" + explain);
    draw_set_color(c_teal);
    draw_text(x , y + 70, "" + skill);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	switch(global.hat)
	{
		case spr_hat1:
			name = "장풍";
			explain = "잠깐의 준비 후 장풍을 일자로 발사해 데미지를 준다";
			skill = "- 40 DMG \n -'가까이에서 사용하는 것이 좋다.'"
		break;
		case spr_hat14:
		    name = "땅의 검술";
		    explain = "잠깐의 준비 후 검을 뽑아 일정시간 동안 전투태세로 바뀐다.";
		    skill = "-  DMG \n -'맞으면 전투태세가 해제된다.'\n -'레벨이 오를수록 마나소모량 감소'"
	    break;
	}
}
}