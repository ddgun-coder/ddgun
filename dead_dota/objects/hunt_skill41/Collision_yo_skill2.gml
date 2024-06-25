/// @description Insert description here
// You can write your code in this editor
if (eat == false) {
	if (global.my_cid == cid) {
		with(testing) {
			hp += 20;
			prt_val_add(Val.mp, 20);
		}
	}
	other.image_index++;
	eat = true;
}