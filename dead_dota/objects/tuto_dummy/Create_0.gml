YA = 0;

depth = -20;

m_hp = 100;

hp = m_hp;

m_mana = 200;

mana = 200;

m_stemina = 100;

surf_xoffset = x;
surf_yoffset = y;

stemina = 100;

m_aexp = 600;

aexp = 0;
alpha = 1;

main_speed = 5;

a_cooltime = 0;

a_cycle = 10;
f_cycle = 10;

arm_tabcooltime = -1;
gi = 0;
m_gi = 600;
a_possible = 1;
face_variable = 0;
frame_level_up = 0;
live = 1;
sturn = 0;
chat = "";
chat_point = 0;
say_time = 0;
chat2 = "";
chat3 = "";
chat4 = "";
chat5 = "";
chat1 = "";
chat6 = "";
only_move = 1;
only_move_frame = 1;
buff_place = 0
chat_one = ""
cid = 0;
alarm_set(9,1);
play_skill = 0;
other_cid = 0;
extra_speed = 0;
hat_frame = 0;
all_spin = 0;
all_spin_limit = 0;
temp_YA = YA;
open_key1 = true;
skill_posible = true;
copper = 0;
iron = 0;
gold = 0;
dota_ball = 0;
pickaxe_up = 0;
mine_say_time = 0;
mine_say = "";
trying = 0;
fun_try = 0;
pickaxe_charge = 900;
arm_type = "normal"
arm_type_num = 0;
left_arm_YA = 0;
right_arm_YA = 0;
left_arm_xscale = 1;
right_arm_xscale = -1;
left_arm_yscale = 1;
right_arm_yscale = 1;
left_arm_deltax = 0;
left_arm_deltay = 0;
right_arm_deltax = 0;
right_arm_deltay = 0;
left_goto_YA = 0;
right_goto_YA = 0;
arm_spin_speed = 1;
arm_spin_able = 0;

star_frame = 0;
star_frame_s = 0;

foot_type = "normal"
foot_type_num = 0;
left_foot_YA = 0;
right_foot_YA = 0;
left_foot_xscale = 1;
right_foot_xscale = -1;
left_foot_yscale = 1;
right_foot_yscale = 1;
left_foot_deltax = 0;
left_foot_deltay = 0;
right_foot_deltax = 0;
right_foot_deltay = 0;
left_goto_YA = 0;
right_goto_YA = 0;
arm_type_more = "none"
spr_arml_more = spr_none;
spr_armr_more = spr_none;
spr_arm_more_num = 0;
spr_arm_morex = 3;
spr_arm_morey = 20;
big_val = 1;
effect_index = spr_none;
effect_num = 0;
go_to_speed = 0;

charging = 0;
time_charging = 0;
a_charging = 0;
fire_charging = 0;
a_possible_time = 0;
color = c_white;
charging_color = 0;
color_cycle = 0;
to_testingXY = false;
to_testingXY_time = 0;

other_YA = 0;

function do_charge() {
	hp -= 20;
	sturn = 120;
	audio_play_sound(have_hit, 9,false);
	var show = instance_create_depth(x, y, depth - 1, DMG_show);
	show.d = 20;
	to_testingXY = true;
	to_testingXY_time = 80;
}
function go_to_back() {
	to_testingXY = false;
	sturn = 60;
	other_YA = testing.YA + 90;
	go_to_speed = 20;
}