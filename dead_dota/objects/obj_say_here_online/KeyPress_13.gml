if (instance_exists(testing)) {
	if (!global.only_see) {
		if (!instance_exists(see_skill32)) {
			switch (testing.chat_point) {
				case 0 : testing.chat_point = 1;
				keyboard_string = "";
				ime_set_language(1)
				break;
	
				case 1 : testing.chat_point = 0;
				ime_set_language(0);
				if (string_count("씨",pre_len) > 0 or string_count("시",pre_len) > 0) {
					keyboard_string = string_replace_all(keyboard_string, "2", "에아");
					keyboard_string = string_replace_all(keyboard_string, "E", "갑니다.");
					keyboard_string = string_replace_all(keyboard_string, "이", "엌");
					keyboard_string = string_replace_all(keyboard_string, "발", "뷁");
					keyboard_string = string_replace_all(keyboard_string, "e", "마이크체크");
				}
				if (string_count("병",pre_len) > 0 or string_count("븅",pre_len) > 0) {
					keyboard_string = string_replace_all(keyboard_string, "신", "잌");
					keyboard_string = string_replace_all(keyboard_string, "산", "아리");
					keyboard_string = string_replace_all(keyboard_string, "싄", "따개");
					keyboard_string = string_replace_all(keyboard_string, "센", "센진방패대가");
					keyboard_string = string_replace_all(keyboard_string, "샌", "샌드믹서");
					keyboard_string = string_replace_all(keyboard_string, "인", "인간성기사 뿌뿌뿡");
				}
				global.chat = keyboard_string;
				pre_len = global.chat;
				max_chat = string_length(global.chat);
				var first_str = string_char_at(global.chat, 0)
				if (max_chat > 50) {
					global.chat = "야! 개짓는 소리좀 안나게 하라!!!";
				}
				switch(global.chat) {
					case "ㅄ":
					global.chat = "병건";
					break;
					case "노트":
					case "섹스":
					case "노뫼":
					case "노뫠":
					case "노뭬":
					global.chat = "내 엉덩이를 때려줘 찰싹!";
					break;
					case "도타신":
						if (room == room_hell) {
							with(testing) {
								if (gi > 200) {
									normal_play(apple_4_act);
									prt_val_add(Val.gi, -200);
								}
								else {
									global.chat = "신은 네곁에 없노라";	
								}
							}
						}
					break;
					case "허경영!":
					with(testing) {
						if (room == room_sky) {
							if (mana >= 80 and a_cooltime <= 0 and a_possible == true) {
									prt_val_add(Val.mp, -80);
									normal_play(cry_2_act);
								}
								else {
									skill_say_time = 30;
									skill_say = "MP: " + string(mana) + " / 80(80)";
									global.chat = "그런거는 우리한테 있을 수가 없어.";
							}
						}
						break;
					}
				}
				switch(first_str) {
					case "-":
					filterling();
					var delet = string_delete(global.chat, 1, 1);
					buffer_seek(buff_chat, buffer_seek_start, 0);
	
					buffer_write(buff_chat,buffer_u8,0)//1은 이제 채팅
					buffer_write(buff_chat,buffer_string,delet);
					buffer_write(buff_chat,buffer_u8,global.team);
	
					network_send_packet(0,buff_chat, buffer_tell(buff_chat));
					break;
					case "/":
						switch(global.chat)
						{
						case "/r" :
						case "/R" :
						case "/관전" :
							if (testing.hp > 99) {
								global.only_see = true;
							}
						break;
						case "/인벤" :
							if (testing.open_key1 == 0)
							{
								testing.mine_say = "구리:" + string(testing.copper) + " 철:" + string(testing.iron) + "\n" + "도타볼:" + string(testing.dota_ball) + " 금:" + string(testing.gold)
								testing.mine_say_time = 100;
							}
							else
							{
								testing.mine_say = "구리:" + string(testing.copper) + " 철:" + string(testing.iron) + " 열쇠:" + string(testing.open_key1) + "\n" + "도타볼:" + string(testing.dota_ball) + " 금:" + string(testing.gold)
								testing.mine_say_time = 100;
							}
						break;
						case "/2020" :
							scr_hat_change2(spr_hatee);

							buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
							buffer_write(testing.buff_chat,buffer_u8,95);//95는 고자동기화
							buffer_write(testing.buff_chat,buffer_u8, global.hat_show);
							buffer_write(testing.buff_chat,buffer_u8, testing.level);
	
							network_send_packet(0,testing.buff_chat, 3);
						break;
						case "/P" :
						case "/곡괭이" :
							if (pickaxe_UI.windows = true)
							{
								pickaxe_UI.windows = false;
							}
							else
							{
								pickaxe_UI.windows = true;
							}
						break;
						case "/((플루톤" :
							scr_hat_change2(spr_secret);
							testing.level = 5;

								buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
								buffer_write(testing.buff_chat,buffer_u8,95);//95는 고자동기화
								buffer_write(testing.buff_chat,buffer_u8, global.hat_show);
								buffer_write(testing.buff_chat,buffer_u8, testing.level);
	
								network_send_packet(0,testing.buff_chat, 3);
						break;
						case "/))플루톤" :
							scr_hat_change2(spr_hat50849);

							buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
							buffer_write(testing.buff_chat,buffer_u8,95);//95는 고자동기화
							buffer_write(testing.buff_chat,buffer_u8, global.hat_show);
							buffer_write(testing.buff_chat,buffer_u8, testing.level);
	
							network_send_packet(0,testing.buff_chat, 3);
						break;
						}
					break;
		
					case "%":
						if (global.hat == spr_hat13 and testing.level > 1) {
							if (testing.gi > 270) {
								var delet = string_delete(global.chat, 1, 1);
								var find = false;
								var teama = false;
								for(var i = 0; i < 20; i++) {
									with(testing1 + i) {
										if (delet == name) {
											if (hat != spr_level5_hat7) {
												find = true;
												if (team == global.team) {
													teama = true;
												}
												break;
											}
										}
									}
								}
								last_name = delet;
								if (find) {
									with(testing) {
										if (teama) {
											hp -= 300;
										}
										prt_val_add(Val.gi, -270);
										normal_play(apple_3_act);
									}
								}
								else {
									mine_say_time = 60;
									mine_say = delet + "란 이름은 없어요.";
								}
							}
							else {
								testing.skill_say_time = 60;
								testing.skill_say = "GI: " + string(testing.gi) + " / 270(270)";
							}
						}
						else {
							filterling();
							buffer_seek(buff_chat, buffer_seek_start, 0);
	
							buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
							buffer_write(buff_chat,buffer_string,global.chat);
							buffer_write(buff_chat,buffer_string,global.name);
	
							network_send_packet(0,buff_chat,buffer_tell(buff_chat));
						}
					break;
		
					case "~":
						if (global.hat == spr_hat28 and testing.level > 1) {
							if (testing.gi > 500) {
								var delet = string_delete(global.chat, 1, 1);
								var find = false;
								for(var i = 0; i < 20; i++) {
									with(testing1 + i) {
										if (delet == name) {
											find = true;
											break;
										}
									}
								}
								if (find) {
									last_name = delet;
									with(testing) {
										prt_val_add(Val.gi, -500);
										normal_play(cry_3_act);
									}
								}
								else {
									with(testing) {
										mine_say_time = 60;
										mine_say = delet + "란 이름은 없어요.";
									}
								}
							}
							else {
								testing.skill_say_time = 60;
								testing.skill_say = "GI: " + string(testing.gi) + " / 500(500)";
							}
						}
						else {
							filterling();
							buffer_seek(buff_chat, buffer_seek_start, 0);
	
							buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
							buffer_write(buff_chat,buffer_string,global.chat);
							buffer_write(buff_chat,buffer_string,global.name);
	
							network_send_packet(0,buff_chat, buffer_tell(buff_chat));
						}
						break;
						case "!":
						if (global.hat == spr_hat64 and testing.level == 3) {
							if (testing.gi > 150) {
								var delet = string_delete(global.chat, 1, 1);
								var find = false;
								for(var i = 0; i < 20; i++) {
									with(testing1 + i) {
										if (delet == name) {
											find = true;
											break;
										}
									}
								}
								if (find) {
									last_name = delet;
									with(testing) {
										prt_val_add(Val.gi, -150);
										normal_play(sang_4_act);
									}
								}
								else {
									with(testing) {
										mine_say_time = 60;
										mine_say = delet + "란 이름은 없어요.";
									}
								}
							}
							else {
								testing.skill_say_time = 60;
								testing.skill_say = "GI: " + string(testing.gi) + " / 150(150)";
							}
						}
						else {
							filterling();
							buffer_seek(buff_chat, buffer_seek_start, 0);
	
							buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
							buffer_write(buff_chat,buffer_string,global.chat);
							buffer_write(buff_chat,buffer_string,global.name);
	
							network_send_packet(0,buff_chat, buffer_tell(buff_chat));
						}
						break;
						break;
						case "&":
						if (global.hat == spr_hat48 and testing.level > 2) {
							if (testing.a_possible == true and testing.a_cooltime <= 0) {
								if (testing.gi > 50) {
									prt_val_add(Val.gi, -50);
									var delet = string_delete(global.chat, 1, 1);
									with(testing) {
										switch(delet) {
										case "1":
											normal_play(twiza_2_act);
										break;
										case "2":
											normal_play(ane_2_act);
										break;
										case "3":
											normal_play(pwiza_2_act);
										break;
										case "4":
											normal_play(apple_1_act);
										break;
										case "5":
											normal_play(gili_1_act);
										break;
										case "6":
											normal_play(fwiza_1_act);
										break;
										case "7":
											normal_play(shep_1_act);
										break;
										case "8":
											normal_play(nuke_2_act);
										break;
										case "9":
											normal_play(he_4_act);
										break;
										case "":
											testing.chat3 = "&1 = 초록법사2차, &2 = 앤2차, &3 = 불법사2차";
											testing.chat2 = "&4 = 사과1차, &5 = 전기1차, &6 = 마녀1차";
											testing.chat1 = "&7 = 양아치1차, &8 = 원자력2차, &9 = 추모4차";
										break;
										default:
											normal_play(p_1_act);
										break;
										}
										server78_create_instace(sans_skill4 , x, y - 100);
									}
								}
								else {
									testing.skill_say_time = 60;
									testing.skill_say = "GI: " + string(testing.gi) + " / 50(50)";
								}
							}
						}
						else {
							filterling();
							buffer_seek(buff_chat, buffer_seek_start, 0);
	
							buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
							buffer_write(buff_chat,buffer_string,global.chat);
							buffer_write(buff_chat,buffer_string,global.name);
	
							network_send_packet(0,buff_chat,buffer_tell(buff_chat));	
						}
						break;
			
						default :
						filterling();
						buffer_seek(buff_chat, buffer_seek_start, 0);
	
						buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
						buffer_write(buff_chat,buffer_string,global.chat);
						buffer_write(buff_chat,buffer_string,global.name);
	
						network_send_packet(0,buff_chat, buffer_tell(buff_chat));
						break;
				}
				break;//채팅 전송
			}
		}
	}
}