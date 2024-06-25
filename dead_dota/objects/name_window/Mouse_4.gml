audio_play_sound(Click_sound,1,false);
audio_play_sound(Click_sound,1,false);
var name = get_string("당신의 이름은?", "");
if (string_length(name) > 9 or string_length(name) == 0) {
	show_message("ㅛ");
	global.name = "심영";
}
else {
	global.name = name;
}
if (" " = string_char_at(name, 0)) {
	show_message("앞에다가 띄어쓰기 하지마");
	global.name = "김두한";
}
else {
	if (global.name != "심영") {
		global.name = name;
	}
}
for (var i = 1; i < string_length(global.name) + 1; i++) {
	if !(ord(string_char_at(global.name, i)) < 127 and ord(string_char_at(global.name, i)) > 31) {
		if !(ord(string_char_at(global.name, i)) < 12644 and ord(string_char_at(global.name, i)) > 12592) {
			if !(ord(string_char_at(global.name, i)) < 55204 and ord(string_char_at(global.name, i)) > 44031) {
				show_message("나쁜 문자 발견");
				global.name = "잰즈";
			}
		}
	}
	if (ord(string_char_at(global.name, i)) == 124) {
		show_message("나쁜 문자 발견");
		global.name = "잰즈";
	}
}
max_name = string_length(global.name);
if (string_char_at(global.name, 0) == " ") {
	 global.name = string_replace_all(global.name, " ", "");
	}
	global.name = string_replace_all(global.name, "똥구녕퍽퍽쭉", ".");
	global.name = string_replace_all(global.name, "똥구멍", ".");
	global.name = string_replace_all(global.name, "똥꼬", ".");
	global.name = string_replace_all(global.name, "항문", ".");
	global.name = string_replace_all(global.name, "소변", ".");
	global.name = string_replace_all(global.name, "대변", ".");
	global.name = string_replace_all(global.name, "뿌지직", ".");
	global.name = string_replace_all(global.name, "구녕", ".");
	global.name = string_replace_all(global.name, "오줌", ".");
	global.name = string_replace_all(global.name, "정액", ".");
	global.name = string_replace_all(global.name, "장액", ".");
	global.name = string_replace_all(global.name, "똥", ".");
	global.name = string_replace_all(global.name, "애널", ".");
	global.name = string_replace_all(global.name, "할매구멍", ".");
	global.name = string_replace_all(global.name, "할까스", ".");
	global.name = string_replace_all(global.name, "구멍", ".");
	global.name = string_replace_all(global.name, "할미구멍", ".");
	global.name = string_replace_all(global.name, "똥카스", ".");
	global.name = string_replace_all(global.name, "할카스", ".");
	global.name = string_replace_all(global.name, "할카", ".");
	global.name = string_replace_all(global.name, "할배카스", ".");
	global.name = string_replace_all(global.name, "할아버지", ".");
	global.name = string_replace_all(global.name, "할머니", ".");
	global.name = string_replace_all(global.name, "할미", ".");
	global.name = string_replace_all(global.name, "할매", ".");
	global.name = string_replace_all(global.name, "할카스", ".");
	global.name = string_replace_all(global.name, "할메", ".");
	global.name = string_replace_all(global.name, "할베", ".");
	global.name = string_replace_all(global.name, "위안부", ".");
	global.name = string_replace_all(global.name, "할먜", ".");
	global.name = string_replace_all(global.name, "할뫠", ".");
	global.name = string_replace_all(global.name, "할며", ".");
	global.name = string_replace_all(global.name, "할뭬", ".");
	global.name = string_replace_all(global.name, "할몌", ".");
	global.name = string_replace_all(global.name, "리버스할배카스", ".");
	global.name = string_replace_all(global.name, "반갈좆할배카스", ".");
	global.name = string_replace_all(global.name, "리버스할카스", ".");
	global.name = string_replace_all(global.name, "반갈좆할카스", ".");
    for(var j = 0; j < max_name; j++) {
	 if (string_char_at(global.name, j) == "할") {
	  for(var i = j; i < max_name + 1; i++) {
	   if (string_char_at(global.name, i) == "카스") {
	    global.name = "."
	    break;
	   }
	  }
	 }
	  if (string_char_at(global.name, j) == "할카") {
	   for(var i = j; i < max_name + 1; i++) {
	    if (string_char_at(global.name, i) == "스") {
	     global.name = "."
	     break;
		}
	   }
	  }
	  if (string_char_at(global.name, j) == "카") {
	   for(var i = j; i < max_name + 1; i++) {
	    if (string_char_at(global.name, i) == "스") {
	     global.name = "."
	     break;
		}
	   }
	  }
	  if (string_char_at(global.name, j) == "할") {
	   for(var i = j; i < max_name + 1; i++) {
	    if (string_char_at(global.name, i) == "머") {
	     global.name = "."
	     break;
		}
	   }
	  }
	   if (string_char_at(global.name, j) == "할") {
	   for(var i = j; i < max_name + 1; i++) {
	    if (string_char_at(global.name, i) == "베") {
	     global.name = "."
	     break;
		}
	   }
	  }
	  if (string_char_at(global.name, j) == "할") {
	   for(var i = j; i < max_name + 1; i++) {
	    if (string_char_at(global.name, i) == "먜") {
	     global.name = "."
	     break;
		}
	   }
	  }
	   if (string_char_at(global.name, j) == "할") {
	   for(var i = j; i < max_name + 1; i++) {
	    if (string_char_at(global.name, i) == "몌") {
	     global.name = "."
	     break;
		}
	   }
	  }
	  if (string_char_at(global.name, j) == "할") {
	   for(var i = j; i < max_name + 1; i++) {
	    if (string_char_at(global.name, i) == "며") {
	     global.name = "."
	     break;
		}
	   }
	  }
	   if (string_char_at(global.name, j) == "할") {
	   for(var i = j; i < max_name + 1; i++) {
	    if (string_char_at(global.name, i) == "뭬") {
	     global.name = "."
	     break;
		}
	   }
	  }
	   if (string_char_at(global.name, j) == "할") {
	   for(var i = j; i < max_name + 1; i++) {
	    if (string_char_at(global.name, i) == "메") {
	     global.name = "."
	     break;
		}
	   }
	  }
	  if (string_char_at(global.name, j) == "할") {
	   for(var i = j; i < max_name + 1; i++) {
	    if (string_char_at(global.name, i) == "카") {
	     global.name = "."
	     break;
		}
	   }
	  }
	  if (string_char_at(global.name, j) == "구") {
	   for(var i = j; i < max_name + 1; i++) {
	    if (string_char_at(global.name, i) == "멍") {
	     global.name = "."
	     break;
		}
	   }
	  }
	if (string_char_at(global.name, j) == "장") {
	   for(var i = j; i < max_name + 1; i++) {
	    if (string_char_at(global.name, i) == "액") {
	     global.name = "."
	     break;
		}
	   }
	  }
	  if (string_char_at(global.name, j) == "할") {
	   for(var i = j; i < max_name + 1; i++) {
	    if (string_char_at(global.name, i) == "미") {
	     global.name = "."
	     break;
		}
	   }
	  }
	  if (string_char_at(global.name, j) == "할") {
	   for(var i = j; i < max_name + 1; i++) {
	    if (string_char_at(global.name, i) == "배") {
	     global.name = "."
	     break;
		}
	   }
	  }
	  if (string_char_at(global.name, j) == "할") {
	   for(var i = j; i < max_name + 1; i++) {
	    if (string_char_at(global.name, i) == "매") {
	     global.name = "."
	     break;
		}
	   }
	  }
	if (string_char_at(global.name, j) == "애") {
	  for(var i = j; i < max_name + 1; i++) {
	   if (string_char_at(global.name, i) == "널") {
	    global.name = "."
	    break;
	   }
	  }
	 }
    if (string_char_at(global.name, j) == "할") {
	  for(var i = j; i < max_name + 1; i++) {
	   if (string_char_at(global.name, i) == "아") {
	    global.name = "."
	    break;
	   }
	  }
	 }
	}
	for(var i = 0; i < 12; i++) {
	 global.name = string_replace_all(global.name, i , irandom(10));
	}
	if (string_char_at(global.name, 0) == "할" and string_char_at(global.name, max_name) == "스") {
	 global.name = ".";
	}
	if (string_char_at(global.name, 0) == "똥" and string_char_at(global.name, max_name) == "스") {
	 global.name = ".";
	}
	if (string_char_at(global.name, 0) == "할" and string_char_at(global.name, max_name) == "멍") {
	 global.name = ".";
	}
	if (string_char_at(global.name, 0) == "할" and string_char_at(global.name, max_name) == "녕") {
	 global.name = ".";
	}
	