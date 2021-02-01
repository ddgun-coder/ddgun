with(testing) {
	switch(irandom(1)) {
		case 0:
			normal_play(nu_2_act);
		break;
		case 1:
			normal_play(fwiza_3_act);
		break;
	}
}
instance_destroy();