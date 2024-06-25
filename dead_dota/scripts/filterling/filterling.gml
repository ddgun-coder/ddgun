function filterling() {
	max_chat = string_length(global.chat);
	if (string_char_at(global.chat, 0) == " ") {
	 global.chat = string_replace_all(global.chat, " ", "");
	}
	global.chat = string_replace_all(global.chat, "씨발", "엌");
	global.chat = string_replace_all(global.chat, "이눔아", "더러워");
	global.chat = string_replace_all(global.chat, "시발", "샌즈");
	global.chat = string_replace_all(global.chat, "새끼", "얼라");
	global.chat = string_replace_all(global.chat, "병신", "중붕");
	global.chat = string_replace_all(global.chat, "븅신", "돌붕");
	global.chat = string_replace_all(global.chat, "느금", "-플-");
	global.chat = string_replace_all(global.chat, "할미", "-정-");
	global.chat = string_replace_all(global.chat, "할매", "-공-");
	global.chat = string_replace_all(global.chat, "부랄", "금구슬");
	global.chat = string_replace_all(global.chat, "랄부", "복주머니");
	global.chat = string_replace_all(global.chat, "가슴", "아가맘마통");
	global.chat = string_replace_all(global.chat, "자지", "씨앗쑤시개");
	global.chat = string_replace_all(global.chat, "멸치", "며루치");
	global.chat = string_replace_all(global.chat, "개1", "개집");
	global.chat = string_replace_all(global.chat, "씹", "10");
	global.chat = string_replace_all(global.chat, "새1", "새우");
	global.chat = string_replace_all(global.chat, "문재앙", "플루톤");
	global.chat = string_replace_all(global.chat, "문죄인", "김일성");
	global.chat = string_replace_all(global.chat, "김머중", "김두한");
	global.chat = string_replace_all(global.chat, "김03", "김밥천국");
	global.chat = string_replace_all(global.chat, "씨1", "씨앗");
	global.chat = string_replace_all(global.chat, "씨2", "씨앗처리");
	global.chat = string_replace_all(global.chat, "시1", "시간");
	global.chat = string_replace_all(global.chat, "씨팔", "오팔");
	global.chat = string_replace_all(global.chat, "좆", "쥬지");
	global.chat = string_replace_all(global.chat, "할카스", "까스활명수");
	global.chat = string_replace_all(global.chat, "똥구녕", "앗!");
	global.chat = string_replace_all(global.chat, "똥구멍", "이야앗");
	global.chat = string_replace_all(global.chat, "개새", "개꿀잼");
	global.chat = string_replace_all(global.chat, "애미", "으악");
	global.chat = string_replace_all(global.chat, "부모님", "감비아");
	global.chat = string_replace_all(global.chat, "엄마", "어머니");
	global.chat = string_replace_all(global.chat, "아빠", "아버지");
	global.chat = string_replace_all(global.chat, "창녀", "선비");
	global.chat = string_replace_all(global.chat, "창년", "대통령");
	global.chat = string_replace_all(global.chat, "시벌", "벌집");
	global.chat = string_replace_all(global.chat, "씨벌", "벌꿀");
	global.chat = string_replace_all(global.chat, "Tlqkf", "으엌");
	global.chat = string_replace_all(global.chat, "시바", "디바");
	global.chat = string_replace_all(global.chat, "십팔", "18");
	global.chat = string_replace_all(global.chat, "ㅛ", "욜");
	global.chat = string_replace_all(global.chat, "ㅗ", "잉");
	global.chat = string_replace_all(global.chat, "ㅄ", "천재");
	global.chat = string_replace_all(global.chat, "지랄", "허걱");
	global.chat = string_replace_all(global.chat, "풀발", "야스");
	global.chat = string_replace_all(global.chat, "ㅆ1", "코");
	global.chat = string_replace_all(global.chat, "홍", "흥");
	global.chat = string_replace_all(global.chat, "통", "탕");
	global.chat = string_replace_all(global.chat, "죶", "코");
	global.chat = string_replace_all(global.chat, "로리", "놀이");
	global.chat = string_replace_all(global.chat, "강간", "간과");
	global.chat = string_replace_all(global.chat, "자위", "사위");
	global.chat = string_replace_all(global.chat, "등신", "안심");
	global.chat = string_replace_all(global.chat, "보전깨", "전구깨");
	global.chat = string_replace_all(global.chat, "빠꾸리", "고도리");
	global.chat = string_replace_all(global.chat, "불알", "블루");
	global.chat = string_replace_all(global.chat, "항문", "' 더러움 '");
	for(var j = 0; j < max_chat; j++) {
	 if (string_char_at(global.chat, j) == "병") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "신") {
	    global.chat = "나는 데스윙 만물의 종결자 내가바로 대 격변이다~"
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "씨") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "발") {
	    global.chat = "우유 좋아 우유 좋아 우유주세요 다주세요~"
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "시") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "발") {
	    global.chat = "그런짓은 하지 말아야 했는데~~~"
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "이") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "눔") {
	    global.chat = "어허 그런방 안입니다."
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "ㅆ") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "발") {
	    global.chat = "코감기 기침감기 콧물감기 콜록콜록"
	    break;
	   }
	  }
	 }
	  if (string_char_at(global.chat, j) == "똥") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "구") {
	    global.chat = "저는 엄마가 없습니다."
	    break;
	   }
	  }
	 }
	  if (string_char_at(global.chat, j) == "똥") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "꾸") {
	    global.chat = "저는 엄마가 없습니다."
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "캐") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "른") {
	    global.chat = "과로쉬 넌 호드를 이끌 자격이 없다"
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "케") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "른") {
	    global.chat = "이제 누가 대족장이지?"
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "캐") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "프") {
	    global.chat = "케로케로케로케로케로"
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "케") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "프") {
	    global.chat = "아기염소가 푸를뜯고 놀아요~"
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "컈") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "프") {
	    global.chat = "탱글탱글 노른자가 최고의 매력이에요~"
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "켸") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "프") {
	    global.chat = "달걀 잡수와~"
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "켸") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "른") {
	    global.chat = "3초는 어떻게 기다려~ 이야이야이야이야"
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "컈") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "른") {
	    global.chat = "난 말라서 먹을게 없어~"
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "블") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "타") {
	    global.chat = "대추넣고 인산넣고 푹 삶아~"
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "부") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "타") {
	    global.chat = "여긴 패션시티"
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "니") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "미") {
	    global.chat = "바라밥바라밥바라밥밥밥"
	    break;
	   }
	  }
	 }
	 if (string_char_at(global.chat, j) == "닝") {
	  for(var i = j; i < max_chat + 1; i++) {
	   if (string_char_at(global.chat, i) == "미") {
	    global.chat = "엔토이로 오세요 엔토이"
	    break;
	   }
	  }
	 }
	}
	for(var i = 0; i < 12; i++) {
	 global.chat = string_replace_all(global.chat, da_name[i], da_name[irandom(10)]);
	}
	if (string_char_at(global.chat, 0) == "노" and string_char_at(global.chat, max_chat) == "매") {
	 global.chat = "내 엉덩이를 때려줘 찰싹!";
	}
	if (string_char_at(global.chat, 0) == "찐" and string_char_at(global.chat, max_chat) == "따") {
	 global.chat = "푸짐해서 정말좋아요";
	}
	if (string_char_at(global.chat, 0) == "ㅅ" and string_char_at(global.chat, max_chat) == "ㅂ") {
	 global.chat = "수박수";
	}
	if (string_char_at(global.chat, 0) == "ㅆ" and string_char_at(global.chat, max_chat) == "ㅂ") {
	 global.chat = "수박수박수";
	}
	if (string_char_at(global.chat, 0) == "ㅅ" and string_char_at(global.chat, max_chat) == "ㅃ") {
	 global.chat = "수박수박수박수";
	}
	if (string_char_at(global.chat, 0) == "ㅂ" and string_char_at(global.chat, max_chat) == "ㅅ") {
	 global.chat = "빙수야 빙수야~";
	}
	if (string_char_at(global.chat, 0) == "ㅃ" and string_char_at(global.chat, max_chat) == "ㅆ") {
	 global.chat = "쁑야";
	}
	if (string_char_at(global.chat, 0) == "ㅆ" and string_char_at(global.chat, max_chat) == "ㅃ") {
	 global.chat = "수박수박수박수박수";
	}
	if (string_char_at(global.chat, 0) == "애" and string_char_at(global.chat, max_chat) == "미") {
	 global.chat = "애미야 물좀다오";
	}
	if (string_char_at(global.chat, 0) == "노" and string_char_at(global.chat, max_chat) == "메") {
	 global.chat = "내 엉덩이를 때려줘 찰싹!";
	}
	if (string_char_at(global.chat, 0) == "노" and string_char_at(global.chat, max_chat) == "너") {
	 global.chat = "내 엉덩이를 때려줘 찰싹!";
	}
	if (string_char_at(global.chat, 0) == "씨" and string_char_at(global.chat, max_chat) == "발") {
	 global.chat = "세상사는게 그렇지 눈을 감으면 어둡지";
	}
	if (string_char_at(global.chat, 0) == "시" and string_char_at(global.chat, max_chat) == "발") {
	 global.chat = "도리토스 다내꺼야";
	}
	if (string_char_at(global.chat, 0) == "느" and string_char_at(global.chat, max_chat) == "금") {
	 global.chat = "답답하면은 코풀지 웃기지도 않는이야기";
	}
	if (string_char_at(global.chat, 0) == "병" and string_char_at(global.chat, max_chat) == "신") {
	 global.chat = "내 컴퓨터 누가 해킹했어~";
	}
	if (string_char_at(global.chat, 0) == "븅" and string_char_at(global.chat, max_chat) == "신") {
	 global.chat = "아이피 어떻게 알아냈지 공유기 사용중일텐데";
	}
	if (string_char_at(global.chat, 0) == "뵹" and string_char_at(global.chat, max_chat) == "신") {
	 global.chat = "전문적 해킹을 배웠구나";
	}
	if (string_char_at(global.chat, 0) == "빙" and string_char_at(global.chat, max_chat) == "신") {
	 global.chat = "으 춥다추워";
	}
	if (string_char_at(global.chat, 0) == "느" and string_char_at(global.chat, max_chat) == "마") {
	 global.chat = "고추참치 고추참치 참치 참치 고추참치";
	}
	if (string_char_at(global.chat, 0) == "개" and string_char_at(global.chat, max_chat) == "끼") {
	 global.chat = "멍멍멍멍멍멍멍멍";
	}
	if (string_char_at(global.chat, 0) == "개" and string_char_at(global.chat, max_chat) == "발") {
	 global.chat = "개발새발모발";
	}
	if (string_char_at(global.chat, 0) == "벼" and string_char_at(global.chat, max_chat) == "신") {
	 global.chat = "벼에서 쌀을!";
	}
	if (string_char_at(global.chat, 0) == "부" and string_char_at(global.chat, max_chat) == "랄") {
	 global.chat = "나만아니면 그만이잖아~~~~~";
	}
	if (string_char_at(global.chat, 0) == "랄" and string_char_at(global.chat, max_chat) == "부") {
	 global.chat = "우리집엔 선풍기가 많지요 아힝흥행";
	}
	if (string_char_at(global.chat, 0) == "씨" and string_char_at(global.chat, max_chat) == "팔") {
	 global.chat = "부부가 산에 올라가면? 쁏 ㅋㅋㅋㅋㅋ";
	}
	if (string_char_at(global.chat, 0) == "씨" and string_char_at(global.chat, max_chat) == "알") {
	 global.chat = "알집 알송 알약 엌";
	}
	if (string_char_at(global.chat, 0) == "지" and string_char_at(global.chat, max_chat) == "랄") {
	 global.chat = "아이엠그라운드 자기소개하기";
	}
	if (string_char_at(global.chat, 0) == "운" and string_char_at(global.chat, max_chat) == "지") {
	 global.chat = "노무현 대통령님 그립습니다...";
	}
	if (string_char_at(global.chat, 0) == "부" and string_char_at(global.chat, max_chat) == "위") {
	 global.chat = "노무현 대통령님 그립습니다...";
	}
	if (string_char_at(global.chat, 0) == "ㄴ" and string_char_at(global.chat, max_chat) == "ㅁ") {
	 global.chat = "정의를 정확히 아는것이 중요하지";
	}
	if (string_char_at(global.chat, 0) == "씨" and string_char_at(global.chat, max_chat) == "빨") {
	 global.chat = "공산당 할꺼야 안할꺼야?!?!?!?";
	}
	if (string_char_at(global.chat, 0) == "ㅅ" and string_char_at(global.chat, max_chat) == "발") {
	 global.chat = "째깍째깍째깍째깍째깍째깍째깍째깍";
	}
	if (string_char_at(global.chat, 0) == "ㅅ" and string_char_at(global.chat, max_chat) == "알") {
	 global.chat = "부릉부릉부릉부릉부릉부릉부릉부릉";
	}
	if (string_char_at(global.chat, 0) == "시" and string_char_at(global.chat, max_chat) == "알") {
	 global.chat = "따르릉 따르릉 비켜가세요 자전거가 나갑니다.";
	}
	if (string_char_at(global.chat, 0) == "씨" and string_char_at(global.chat, max_chat) == "알") {
	 global.chat = "이것은 유저게임 입니다.";
	}
	if (string_char_at(global.chat, 0) == "뷰" and string_char_at(global.chat, max_chat) == "신") {
	 global.chat = "5월 29일 DD도타 잠들다.";
	}
	if (string_char_at(global.chat, 0) == "앰" and string_char_at(global.chat, max_chat) == "창") {
	 global.chat = "창병 사실 좋음";
	}
	if (string_char_at(global.chat, 0) == "엠" and string_char_at(global.chat, max_chat) == "창") {
	 global.chat = "창병 사실 구림";
	}
	if (string_char_at(global.chat, 0) == "얨" and string_char_at(global.chat, max_chat) == "창") {
	 global.chat = "야임마! 나 앰자 탈모야!";
	}
	if (string_char_at(global.chat, 0) == "옘" and string_char_at(global.chat, max_chat) == "창") {
	 global.chat = "이야이야이야 씰룩씰룩 데구루루";
	}
	if (string_char_at(global.chat, 0) == "후" and string_char_at(global.chat, max_chat) == "씨") {
	 global.chat = "신난다 재미난다 우리들은 꾸러기";
	}
	if (string_char_at(global.chat, 0) == "할" and string_char_at(global.chat, max_chat) == "멍") {
	 global.chat = "저는 엄마가 없습니다.";
	}
	//show_debug_message(global.chat);


}
