function yagol_1_act() 
{
	var what = irandom(2);
	switch(what) {
		case 0:
			normal_play(nu_1_act1);
		break;
		case 1:
			normal_play(charge_1_act);
		break;
		case 2:
			normal_play(musa_1_act);
		break;
	}
}