if (testing.level > 0) {
if(obj_snowshop.windows == true) {
	if (global.hat == spr_hat72) {
        switch(testing.w_attack_type) {
            case spr_sangbrush:
                testing.w_attack_type = spr_mod1
				audio_play_sound(Click_sound,1,false);
                audio_play_sound(Click_sound,1,false);
            break;
			default:
			break;
        }
    }
}
}