/// @description Insert description here
// You can write your code in this editor
if (instance_number(object_index) >= 2) instance_destroy();
alarm[0] = 40 * 60;
alarm[1] = 4
alpha = 0;
card_array = [];
fire_work_time = 0;
text_light = c_white
selected_number = 0;
timer_max = 40 * 5;
timer = 0;
card_select_start = false;
draw_dx = 300;
xoffset = 0;
yoffset = 100;
card_draw_x = global.window_width / 2 - xoffset;
card_draw_y = global.window_height / 2 - yoffset;
draw_dy_timer = 20;
seletable = false;
surf = -1;
cur_card_str = noone;
ani_cure_time_max = 30;
ani_cure_time = 0;
image_speed = 0;
card_dy = 100;
card_down_acition = false;
card_scale = 0.5;
card_blend_ratio = 0;
card_light_alpha = 0;
card_playing = false;
card_playing_time = 0;
card_playing_effect_index = 0;
card_playing_time_max = 1;
function light_effect() {
	card_light_alpha = 1;
}

function change_blend() {
	card_blend_ratio = 0.8;
}

function const_card(_name, _expl_str, _spr, _disp) constructor
{
	name_str = _name;
	expl_str = _expl_str;
	spr = _spr;
	disposal = _disp;
}
array_push(card_array, new const_card("두번 반복", "아이템이 2번 사용된다.", spr_card1, false));
array_push(card_array, new const_card("쓸만한 점멸", "스태미나가 없어집니다. 대신 S키를 누르면 점멸을 사용하게 됩니다.", spr_card2, false));
array_push(card_array, new const_card("초죽음", "10초간 족쇄를 차지만, 마나/기 소모 50% 감소", spr_card3, true));
array_push(card_array, new const_card("폭죽", "2초마다 3가지중 하나의 폭죽이 자동으로 날라감.", spr_card4, false));
array_push(card_array, new const_card("초미니", "매우매우 작아집니다. (히트박스도 작아짐)", spr_card5, false));
array_push(card_array, new const_card("울보", "10초간 맞을때마다 웁니다.", spr_card6, true));
array_push(card_array, new const_card("긴급탈출카드", "스스로 자폭하고 빠르게 도망갑니다.", spr_card7, true));
array_push(card_array, new const_card("엔데믹", "사용시 전염성 독디버프를 얻습니다.", spr_card8, true));
array_push(card_array, new const_card("룰렛", "사용시 c 사용하여 운빨 룰렛을 돌립니다.", spr_card9, true));
array_push(card_array, new const_card("압수", "30초간 시야가 좁아집니다. 대신 방어도100을 얻습니다. 시야는 서서히 넓어지지만, 맞으면 다시 좁아집니다.", spr_card10, true));
array_push(card_array, new const_card("고무모자", "모든 버프/디버프 지속 시간이 90%줄어듦", spr_card11, false));
array_push(card_array, new const_card("고자좀비", "사망시 부활하며 충격파를 날립니다.(1회용)", spr_card12, false));
array_push(card_array, new const_card("왕관의 무게", "왕관을 착용합니다. 공격시 레이저가 나가고 왕관이 꺼지며, 왕관의 상태에 따라 이동속도가 달라집니다.", spr_card13, true));
array_push(card_array, new const_card("킹냥이", "나를 따라오는 고양이를 소환합니다. 고양이는 근처에 있으면 공격합니다.", spr_card14, true));
var num = array_length(card_array);
for (var i = 0; i < num; i++) {
	shuffle_array[i] = i;		
}

function set_surf_card() {
	var draw_x = 0;
	var draw_y = 0;
	if (!surface_exists(surf)) {
		surf = surface_create(180, 300);
	}	
	surface_set_target(surf);
	draw_sprite(spr_card_frame, 0, sprite_get_xoffset(spr_card_frame), sprite_get_yoffset(spr_card_frame));
	draw_sprite(cur_card_str.spr, 0, draw_x + 40, draw_y + 47);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	draw_text_bold(draw_x + 92, draw_y + 187, cur_card_str.name_str);
	draw_set_color(make_color_rgb(254, 215, 100));
	draw_text(draw_x + 92, draw_y + 187, cur_card_str.name_str);
	draw_set_color(c_white);
	draw_text_ext(draw_x + 92, draw_y + 227, cur_card_str.expl_str, 12, 154 - 25);
	if (cur_card_str.disposal) { 
		draw_sprite(spr_card_frame_select, 1, draw_x + 90, draw_y + 150);
	}
	surface_reset_target();	
}

function card_start() {
	alpha = 0;
	seletable = true;
	shuffle_array = array_shuffle(shuffle_array);
	selected_number = 0;
	card_select_start = true;
	draw_dy_timer = 20;
	timer = timer_max;
	for (var i = 0; i < 3; i++) {
		var _id = instance_create_depth(card_draw_x + draw_dx * (i - 1), card_draw_y, depth, obj_card);
		_id.str = card_array[shuffle_array[i]]
		_id.timer = (i + 1) * 20;
		_id.number = i;
	}
}

function card_end() {
	alpha = 0;
	seletable = false;
	card_select_start = false;
	with (obj_card) {
		end_action = true;
	}
	with (testing) {
		effect_index = spr_none;
		moveable = true;
	}
}

function get_name() {
	if (cur_card_str != noone) {
		return 	cur_card_str.name_str;
	}
	else {
		return "noone";	
	}
}

function get_playing_name() {
	if (card_playing and cur_card_str != noone) {
		return 	cur_card_str.name_str;
	}
	else {
		return "noone";	
	}
}

card_start();
x = global.window_width - 100 - sprite_xoffset;
y = 200 - sprite_yoffset;