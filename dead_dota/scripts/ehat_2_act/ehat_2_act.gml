function ehat_2_act() 
{
	var what = irandom(2);
	switch(what) {
		case 0:
			normal_play(sward_4_act);
		break;
		case 1:
			normal_play(spear_4_act);
		break;
		case 2:
			normal_play(pota_4_act);
		break;
	}
}