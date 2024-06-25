if (instance_exists(testing)) {
if(obj_snowshop.windows == true) {
	if (global.hat == spr_hat72) {
        switch(testing.d_attack_type) {
            case spr_sangbrush:
                testing.d_attack_type = spr_mod3
				audio_play_sound(Click_sound,1,false);
                audio_play_sound(Click_sound,1,false);
            break;
			default:
			break;
        }
    }
}
}