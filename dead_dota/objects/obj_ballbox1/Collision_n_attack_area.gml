/// @description Insert description here
// You can write your code in this editor
if (sturn < 0) {
	hp -= 10;
	audio_play_sound(have_hit, 9,false);
	sturn = 10;
	if (other.cid == global.my_cid) {
		testing.hp += 10;
		testing.aexp += 40;
		prt_val_add(Val.mp, 20);
	}
}