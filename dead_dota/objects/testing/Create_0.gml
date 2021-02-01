YA = 0;
depth = -20;
push = 0;
m_hp = 100 * 3;
counter_attak = false;
hp = 100 * 3;
YA2 = 0;
m_mana = 200;
m_sturn = 0;
fish_time = 0;
fishing = false;
ink = 500;
effect_index_under = spr_none;
mana = 100;
mouse_posible = false;
level_up_false = 0;
m_stemina = 100;
time_x = x;
time_y = y;
aring_amount = 0;
jump_time = 0;
stemina = 100;

up_skill = 0;
m_aexp = 600;
grv = 0;
aexp = 0;
dominate_time = 0;
main_speed = 7;

a_cooltime = -1;
cur_attack = 0;
a_cycle = 10;
f_cycle = 10;

arm_tabcooltime = -1;

gi = 0;
m_gi = 600;

level = 0;
combo = 0;
combo_time = 0;
a_possible = true;

face_variable = 0;

frame_level_up = 0;
live = 1;
sturn = 0;
/*
if (file_exists("dsaf.ppap")) {
	show_message("당신은 밴을 당했습니다 ㅠㅠ");
	url_open("https://www.youtube.com/watch?v=YZ7sQLqiNyk");
	game_end();
	exit;
}*/
hat_bye_time = -1;
chat = "";
chat_point = 0;
say_time = 0;
chat2 = "";
chat3 = "";
chat4 = "";
chat5 = "";
chat1 = "";
chat6 = "";
jump = false;
jump_time = 0;
randomize();
draw_set_font(font0);//폰트 지정
alarm_set(11,15);
alarm[1] = 240;
only_move = 1;
depth = 100;
state = 0;
only_move_frame = 1;
sprite_set_cache_size (testing,2);
buff_place = 0
chat_one = ""
room_speed = global.speeed;
cid = 0;
just_time = 1200;
alarm_set(9,1);
play_skill = 0;
other_cid = id;
extra_speed = 0;
hat_frame = 0;
face_frame = 0;
ride = false;
hat_bye = false;
all_spin = 0;
all_spin_limit = 0;
temp_YA = YA;
racing = 0;

open_key1 = false;
skill_posible = true;
EQ = false;
hat_move = false;
YA_change_10 = -4
buff_change_time = 0;
buff_speed = 0;
YA_changeable = false
hat_xscale = 1
skill_say = "";
go_to_speed_solid = 0;
skill_say_time = 0;
effect_index_num = -1;
jumping = false;
temp_x = x;
creper_die = false;
temp_y = y;
copper = 0;
iron = 0;
gold = 0;
dota_ball = 0;
pickaxe_up = 0;
mine_say_time = 0;
mine_say = "";
trying = 0;
fun_try = 0;
tele_try = 3;
pickaxe_charge = 900;
shild = false;
re = 0;
creper = false;
view_where = 0;
cur_xview = 0;
cur_yview = 0;
alive = 15;
buff_fast = buffer_create(10,buffer_fast,1);
no_change = false;
gap = 0;
charge = false;
charge_time = -1;
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
left_goto_YA = YA;
right_goto_YA = YA;
arm_spin_speed = 1;
arm_spin_able = 0;
hat_x = x + lengthdir_x(charge * 15, YA - 90);
hat_y = y + lengthdir_y(charge * 15, YA - 90);
go_soild = false;
jump_try = 0;
star_frame = 0;
star_frame_s = 0;
alarm[5] = 400;
alarm[6] = 4000;
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
left_goto_YA = YA;
right_goto_YA = YA;
go_to_solid_YA = 0;
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
hat_YA = 0;
hat_num = 0;
mine_sat_time = 0;
mine_say = "";
go_to_scale = 1;
big_val_time = 0;
big_shild = false;
YA_change_small = false;
YA_change_small_time = 0;
buff_index = spr_none;
buff_time = 0;
only_hat = false;
dead_nu = false;
nu_say = 0;
nu_say_time = 0;
nu_on = false;
cancle_able = false;
alpha = 1;
cli_alpha = 1;
invisible = false;
invisible_time = 0;
attacking = false;
bloodable = false;
immune = false;
terror_charge = 0;
shild_time = 0;
obj_id = 0;
spin_able = false;
moveable = true;
footL_x = x;
footL_y = y;
armL_x = x;
armL_y = y;
kazino_one = false;
armR_x = x;
armR_y = y;
footR_x = x;
footR_y = y;
main_big_val = 1;
normal_attack_type = spr_none;
a_level = 0;
alarm_set(10,1);
counter = 0;
buff_chat = buffer_create(200 ,buffer_fixed,1);
buff_area = buffer_create(200 ,buffer_fixed,1);
a_a_cooltime = 0;
gi_1 = 0;
mana_1 = 0;
a_charging_1 = 0;
charging_1 = 0;
spr_arm_morey_1 = 0;
spr_arm_morex_1 = 0;
spr_armr_more_1 = 0;
spr_arml_more_1 = 0;
effect_index_1 = 0;
effect_num_1 = 0;
effect_index_num_1 = 0;
hat_YA_1 = 0;
right_arm_yscale_1 = 0;
left_arm_yscale_1 = 0;
spr_arm_more_num_1 = 0;
enum Val
{
    gi=1,
    mp=2,
	cuper = 3,
	iron = 4,
	gold = 5,
	ball = 6,
	event = 7,
	dmg_per = 8,
	MPR = 9
}
if (ds_list_size(global.prt_list) == 1) {
	prt_add(gi);
	prt_add(mana);
	prt_add(copper);
	prt_add(iron);
	prt_add(gold);
	prt_add(dota_ball);
	prt_add(0);
	prt_add(1);
	prt_add(2);
}
prt_val_set(Val.ball, 0);

audio_play_sound(resurrection, 0, 0);

audio_play_sound(resurrection2, 0, 0);

charging = 0;
time_charging = 0;
a_charging = 0;
fire_charging = 0;
a_possible_time = 0;
color = c_white;
charging_color = 0;
color_cycle = 0;