/*
randomize();
#macro MAX_ITME_BOX 8
#macro jj 6
global.money = 40000;
global.team = irandom(1);
var ran = irandom(99)

if (ran < 10) {
	ran = "0" + string(ran);
}
global.window_width = 1024;
global.window_height = 768;
global.ban_say = ds_list_create();
global.hat_num = 0
global.my_cid = 0;
global.intuto = false;
global.my_cid_id = 0;
global.only_see = false;
global.client = -1;
global.skin = 0;
global.name = "무명용사" + string(ran);
global.hat = spr_hat1;
global.stats = spr_stats1
global.arm = spr_arm1;
global.speeed = 40;
global.foot = spr_foot1;
global.face = spr_face1;
global.stats = spr_stats1;
global.online = 0;
global.pickaxe_index = spr_pickaxe9
global.pickaxe_num = array_create(10, 0);
global.pickaxe_exist = array_create(10, false);
global.pickaxe_exist[0] = true;
global.starcoin = 0;
global.item = array_create(MAX_ITME_BOX, spr_none);
global.item_time = array_create(MAX_ITME_BOX, 0);
global.item_time_max = array_create(MAX_ITME_BOX, 1);
global.item_cnacle = array_create(MAX_ITME_BOX, false);
global.item_show = 0;
global.BGM = true;
global.show_hitbox = true;
var file = file_text_open_read("key_config.txt");
if (file != -1) {
	//show_debug_message("a");
	global.keya = file_text_read_real(file);
	file_text_readln(file);
	global.keys = file_text_read_real(file);
	file_text_readln(file);
	global.keyd = file_text_read_real(file);
	file_text_readln(file);
	global.keyq = file_text_read_real(file);
	file_text_readln(file);
	global.keyw = file_text_read_real(file);
	file_text_readln(file);
	global.keye = file_text_read_real(file);
	file_text_readln(file);
	global.keyr = file_text_read_real(file);
	file_text_readln(file);
	global.keyg = file_text_read_real(file);
	file_text_readln(file);
	global.shift = file_text_read_real(file);
	file_text_readln(file);
	global.cap = file_text_read_real(file);
	file_text_readln(file);
	global.keyf = file_text_read_real(file);
	file_text_readln(file);
	global.up = file_text_read_real(file);
	file_text_readln(file);
	global.down = file_text_read_real(file);
	file_text_readln(file);
	global.left = file_text_read_real(file);
	file_text_readln(file);
	global.right = file_text_read_real(file);
}
else {
	global.left = vk_left;
	global.right = vk_right;
	global.up = vk_up;
	global.down = vk_down;
	global.shift = vk_shift;
	global.cap = 20;
	global.keya = ord("A");
	global.keyf = ord("F");
	global.keys = ord("S");
	global.keyd = ord("D");
	global.keyq = ord("Q");
	global.keyw = ord("W");
	global.keye = ord("E");
	global.keyr = ord("R");
	global.keyg = ord("G");
}
global.hat_array = [spr_hat, spr_hat1, spr_hat14, spr_hat15, spr_hat27, spr_hat12, spr_hat10, spr_hat19, 
spr_hat7, spr_hat29, spr_hat3, spr_hat8, spr_hat16, spr_hat6, spr_hat4, spr_hat13, spr_hat23,
spr_hat24, spr_hat26, spr_hat2, spr_hat11, spr_hat17, spr_hat20, spr_hat28, spr_hat18, spr_hat9
, spr_hat5, spr_hat25, spr_hat31, spr_hat39, spr_hat30, spr_hat21, spr_hat32, spr_hat22, spr_hat33
, spr_hat36, spr_hat37, spr_hat38, spr_hat34, spr_hat40, spr_hat35, spr_hat41, spr_hat42, spr_hat43
, spr_hat44, spr_hat45, spr_hat46, spr_hat47, spr_hat48, spr_hat49, spr_hat50, spr_hat51, spr_hat52
, spr_hat53, spr_hat54, spr_hat55, spr_hat56, spr_hat57, spr_hat58, spr_hat59, spr_hat60, spr_hat61, spr_hat62
, spr_hat63, spr_hat64, spr_hat65, spr_hat66, spr_hat67, spr_hat68, spr_hat69, spr_hat70, spr_hat71 
, spr_hat72, spr_hat73, spr_hat74, spr_hat75
, spr_level5_hat1,spr_level5_hat2, spr_level5_hat3, spr_level5_hat4, spr_level5_hat5, spr_level5_hat6
, spr_level5_hat7, spr_level5_hat8, spr_level5_hat9, spr_level5_hat10, spr_level5_hat11, spr_level5_hat12
, spr_level5_hat13, spr_level5_hat14, spr_level5_hat15, spr_level5_hat17, spr_level5_hat18
, spr_ehat4, spr_secret, spr_hat50849];
global.prt_list = ds_list_create();//변수 리스트
global.prt_de_list = ds_list_create();//복호화 키 리스트
global.prt_key = irandom_range(1,10000);//암호화 키
global.ip = "124.50.53.124";
global.ban_list = array_create(100, false);
global.cid_array = array_create(25, 0);
global.cid_array = [testing0, testing1,testing2,testing3,testing4,testing5,testing6,testing7,
testing8,testing9,testing10, testing11,testing12,testing13,testing14,testing15,testing16,testing17,
testing18,testing19, testing20, testing21, testing22, testing23, testing24]
enum Val2
{
    mon=0
}
prt_add(global.money);
alarm[0] = 1;
global.num_font = font_add_sprite_ext(spr_num, "0123456789.-+|", false, 0);
scr_hat_change2(spr_hat1);
*/