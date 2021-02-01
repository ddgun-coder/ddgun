with(testing) {
	switch(irandom(3)) {
		case 0:
			normal_play(i_book);
		break;
		case 1:
			normal_play(mili_1_act);
		break;
		case 2:
			normal_play(mili_3_act);
		break;
		case 3:
			normal_play(mili_4_act);
		break;
	}
}
instance_destroy();