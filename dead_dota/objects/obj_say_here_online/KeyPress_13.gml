if (instance_exists(testing)) {
	if (!global.only_see) {
		if (!instance_exists(see_skill32)) {
			var _str = text.get_text();
			text.clear();
			switch (testing.chat_point) {
				case 0 : 
					testing.chat_point = 1;
					_str = "";
				break;
	
				case 1 : 
				testing.chat_point = 0;
				if (string_count("씨",pre_len) > 0 or string_count("시",pre_len) > 0) {
					_str = string_replace_all(_str, "2", "에아");
					_str = string_replace_all(_str, "E", "갑니다.");
					_str = string_replace_all(_str, "이", "엌");
					_str = string_replace_all(_str, "발", "뷁");
					_str = string_replace_all(_str, "e", "마이크체크");
				}
				if (string_count("병",pre_len) > 0 or string_count("븅",pre_len) > 0) {
					_str = string_replace_all(_str, "신", "잌");
					_str = string_replace_all(_str, "산", "아리");
					_str = string_replace_all(_str, "싄", "따개");
					_str = string_replace_all(_str, "센", "센진방패대가");
					_str = string_replace_all(_str, "샌", "샌드믹서");
					_str = string_replace_all(_str, "인", "인간성기사 뿌뿌뿡");
				}
				global.chat = _str;
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
					case "놋트":
					case "노몌":
					case "노먜":
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
					case "허령영!":
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
						/*
						case "/관전" :
							if (testing.hp > 99) {
								global.only_see = true;
							}
						break;*/
						case "/중립":
							with(testing) {
								if(gi >= 400) {
									if(a_possible = true) {
										if (a_cooltime <= 0) {
										level = 0
										main_big_val = 1
										hp = hp * 0.5
										for (var i = 0; i < 8; i++) {
											global.item_time[i] -= global.item_time[i] * 0.65;
										}
										global.team = 2;
										server77_equal(serve_val.team, global.team, buffer_u8);
										prt_val_add(Val.gi, -500);
									}
								}	
							}
							}
						break;
						case "/))플루톤" :
							scr_hat_change2(spr_hat50849);
							testing.level = 0
							testing.main_big_val = 1

							buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
							buffer_write(testing.buff_chat,buffer_u8,95);//95는 고자동기화
							buffer_write(testing.buff_chat,buffer_u8, global.hat_show);
							buffer_write(testing.buff_chat,buffer_u8, testing.level);
	
							network_send_packet(0,testing.buff_chat, 3);
						break;
						}
					break;
		
					case "%":
						if (global.hat == spr_hat13 and testing.level >= 0 and testing.a_cooltime <= 0) {
							if (testing.gi >= 220 - testing.level * 40) {
								var delet = string_delete(global.chat, 1, 1);
								var find = false;
								var teama = false;
								for(var i = 0; i < 20; i++) {
									with(global.cid_array[i]) {
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
										prt_val_add(Val.gi, -220 + testing.level * 40);
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
								testing.skill_say =  "GI: " + string(testing.gi) + " / "  + string(220 - testing.level * 40) + "(" + string(220 - testing.level * 40)  + ")";
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
						if (global.hat == spr_hat28 and testing.level > 1 and testing.a_cooltime <= 0) {
							if (testing.gi > 500) {
								var delet = string_delete(global.chat, 1, 1);
								var find = false;
								for(var i = 0; i < 20; i++) {
									with(global.cid_array[i]) {
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
									with(global.cid_array[i]) {
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
						case "&":
						if (global.hat == spr_hat48 and testing.level > 2) {
							if (testing.a_possible == true and testing.a_cooltime <= 0) {
								if (testing.gi > 50) {
									prt_val_add(Val.gi, -50);
									var delet = string_delete(global.chat, 1, 1);
									with(testing) {
										sans_type = delet
										switch(delet) {
										case "1":
											normal_play(twiza_2_act);
										break;
										case "2":
											normal_play(ane_2_act);
										break;
										case "3":
											normal_play(p_1_act);
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
											normal_play(die_3_act);
										break;
										case "":
											testing.chat4 = "&1 = 초록법사 Q, &2 = 앤 Q, &3 = 펭귄 D";
											testing.chat3 = "&4 = 사과 D, &5 = 전기D, &6 = 마녀 D";
											testing.chat2 = "&7 = 양아치 D, &8 = 원자력Q, &9 = 척살 w";
											testing.chat1 = "사용할 마법이 설정되지 않았다!"
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
