/// @description Insert description here
// You can write your code in this editor
var skin_type = 0;

switch (cid_id.hat) {
	case spr_hat56 :
		if (cid_id.skin == 1) {
			skin_type = 1;
		}
	break;
	case spr_hat25 :
		if (cid_id.skin == 1) {
			skin_type = 1;
		}
	break;
	case spr_hat20 :
		if (cid_id.skin == 2) {
			skin_type = 1;
		}
	break;
	case spr_hat14 :
		if (cid_id.skin == 4) {
			skin_type = 1;
		}
		else if (cid_id.skin == 5) {
			skin_type = 2;	
		}
	break;
	case spr_hat32 :
		if (cid_id.skin == 1) {
			skin_type = 1;
		}
	break;
}	

var snd1 = resurrection;
var snd2 = resurrection2;
switch (skin_type) {
	case 0 :
		sprite_index = spr_spawn;
		snd1 = resurrection;
		snd2 = resurrection2;
		scale = cid_id.big_val * 2;
	break;
	case 1 :
		sprite_index = spr_spawn_skin1;
		snd1 = snd_resurrection_skin1;
		snd2 = snd_resurrection2_skin1;
		scale = cid_id.big_val
	break;
	case 2 :
		sprite_index = spr_spawn_skin2;
		scale = cid_id.big_val
	break;
}
	
audio_play_sound(snd1, 0, 0);
if (cid_id == global.my_cid_id) {
	audio_play_sound(snd2, 0, 0);
}