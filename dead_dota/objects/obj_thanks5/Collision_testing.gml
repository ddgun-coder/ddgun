/// @description Insert description here
// You can write your code in this editor
if (dis <= 0) {
	var amount = irandom(10) + 1;
	prt_val_add(Val.ball, amount);
	with(testing) {
		aexp += 300;
		skill_say_time = 40;
		skill_say = "도타볼 +" + string(amount);
	}
	instance_destroy();
}