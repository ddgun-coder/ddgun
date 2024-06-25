/// @description Insert description here
// You can write your code in this editor
if (end_action) {
    if (!selected) {
        image_xscale -= 1.5 / 40;
        image_yscale -= 1.5 / 40;
        image_angle += 15;
    }

    if (ani_cure_time < ani_cure_time_max) {
        ani_cure_time++;
        if (selected) {
            ani_cure = animcurve_get(ac_incre).channels[1];
            timer = animcurve_channel_evaluate(ani_cure, ani_cure_time / ani_cure_time_max);
            y = ystart - timer * 800;
        }
    }
    else {
        instance_destroy();
    }
    exit;
}

y = ystart - timer * 15;
if (timer > 0) {
    timer--;
	if (timer == 0 and !audio_is_playing(snd_card_draw)) {
		audio_play_sound(snd_card_draw, 0, false);
	}
}
if (turn_over_time > 0) {
    turn_over_time--;
}
else {
    turn_over = true;
}

if (turn_over) {
    if (theta < 180) {
        theta += 10;
        image_xscale = -cos(degtorad(theta)) * 1.5;
        image_yscale = 1.5;
        if (image_xscale > 0) {
            sprite_index = spr_card_frame;
        }
    }
    if (instance_exists(testing)) {
        var num = floor((testing.YA) / 90);
        if (instance_exists(obj_card_manager)) {
            selected = obj_card_manager.selected_number == number
        }
       /* if (selected) image_blend = make_color_rgb(255, 205, 205) else image_blend = c_white;*/
    }
}