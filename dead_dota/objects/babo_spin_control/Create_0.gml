/// @description Insert description here
// You can write your code in this editor
to_cid = noone;
to_testingXY = false;
to_testingXY_time = 0;
go_to_speed = 0;
skill_create(300);
other_YA = 0;
function do_charge() {
	to_testingXY = true;
	to_testingXY_time = 100;
}
function go_to_back() {
	to_testingXY = false;
	other_YA = to_cid.YA + 90;
	go_to_speed = 40;
}



do_charge();








