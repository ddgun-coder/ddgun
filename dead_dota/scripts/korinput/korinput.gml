// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조

global.__kortext_language = "en";
global.__kortext_frame = 0;

function __kortext_step()
{
	kortext_set_language();
	global.__kortext_frame++;
	call_later(1,time_source_units_frames,__kortext_step);
}

__kortext_step();

function kortext(str = ""){
	return new __kortext_class_element(str);
}

function __kortext_class_element(str) constructor
{
	text = str;
	text_composing = ["","",""];
	text_composing_status = 0;// 0 = "", 1 = "(초성)", 1.2 = "(합성 초성)", 1.5 = "( )(모음)", 2 = "(초성)(중성)", 2.5 = "( )(합성 모음)" 3 = "(초성)(중성)(종성)
	backspace_time = 0;
	backspace_delay = 0;
	backspace_last_frame = -1;
	
	static input = function(str)
	{
		kortext_set_language();
		
		if(str == -1)
		{
			if(backspace_last_frame < global.__kortext_frame-1)
			{
				__kortext_backspace();
				backspace_time = 0;
				backspace_delay = 0;
				backspace_last_frame = -1;
			}
			else
			{
				backspace_time++;
				if(backspace_time > 20)
				{
					if(backspace_delay <= 0)
					{
						__kortext_backspace();
						backspace_delay += 1.5;
					}
					else
					{
						backspace_delay--;
					}
				}
			}
			
			backspace_last_frame = global.__kortext_frame;
		}
		else
		{
			for(var i = 0; i < string_length(str); i++)
			{
				var _char = string_copy(str,i+1,1);
				if(global.__kortext_language == "kr" and ord(_char) >= 65 and ord(_char) <= 127)
				{
					if(text_composing_status == 0)
					{
						if(__kortext_get_char_type(_char) == 0)
						{
							text_composing[0] = _char;
							text_composing_status = 1;
						}
						else
						{
							text_composing[1] = _char;
							text_composing_status = 1.5;
						}
					}
					else if(text_composing_status == 1)
					{
						if(__kortext_get_char_type(_char) == 0)
						{
							if(__kortext_get_char_is_composable_consonant(text_composing[0],_char))
							{
								text_composing_status = 1.2;
								text_composing[0] += _char;
							}
							else
							{
								text += __kortext_get_alone_char(text_composing[0]);
								text_composing_status = 1;
								text_composing[0] = _char;
							}
						}
						else
						{
							text_composing_status = 2;
							text_composing[1] = _char;
						}
					}
					else if(text_composing_status == 1.2)
					{
						if(__kortext_get_char_type(_char) == 0)
						{
							text += __kortext_get_alone_char(text_composing[0]);
							text_composing[0] = _char;
							text_composing_status = 1;
						}
						else
						{
							text += __kortext_get_alone_char(_char);
							text_composing[1] = _char;
							text_composing_status = 1.5;
						}
					}
					else if(text_composing_status == 1.5)
					{
						if(__kortext_get_char_type(_char) == 0)
						{
							text += __kortext_get_alone_char(text_composing[1]);
							text_composing_status = 1;
							text_composing[0] = _char;
						}
						else
						{
							if(__kortext_get_char_is_composable_gather(text_composing[1],_char))
							{
								text_composing_status = 2.5;
								text_composing[1] += _char;
							}
							else
							{
								text += __kortext_get_alone_char(text_composing[1]);
								text_composing[1] = _char;
								text_composing_status = 1.5;
							}
						}
					}
					else if(text_composing_status == 2)
					{
						if(__kortext_get_char_type(_char) == 0)
						{
							if(__kortext_get_consonant_can_be_jong(_char))
							{
								text_composing_status = 3;
								text_composing[2] = _char;
							}
							else
							{
								text += __kortext_get_composed_char(__kortext_get_cho_index(text_composing[0]),__kortext_get_joong_index(text_composing[1]));
								text_composing[0] = _char;
								text_composing_status = 1;
							}
						}
						else
						{
							if(__kortext_get_char_is_composable_gather(text_composing[1],_char))
							{
								text_composing_status = 2;
								text_composing[1] += _char;
							}
							else
							{
								text += __kortext_get_composed_char(__kortext_get_cho_index(text_composing[0]),__kortext_get_joong_index(text_composing[1]));
								text_composing[1] = _char;
								text_composing_status = 1.5;
							}
						}
					}
					else if(text_composing_status == 2.5)
					{
						if(__kortext_get_char_type(_char) == 0)
						{
							text += __kortext_get_alone_char(text_composing[1]);
							text_composing[0] = _char;
							text_composing_status = 1;
						}
						else
						{
							text += __kortext_get_alone_char(text_composing[1]);
							text_composing[1] = _char;
							text_composing_status = 1.5;
						}
					}
					else if(text_composing_status == 3)
					{
						if(__kortext_get_char_type(_char) == 0)
						{
							if(__kortext_get_char_is_composable_consonant(text_composing[2],_char))
							{
								text_composing_status = 3;
								text_composing[2] += _char;
							}
							else
							{
								text += __kortext_get_composed_char(__kortext_get_cho_index(text_composing[0]),__kortext_get_joong_index(text_composing[1]),__kortext_get_jong_index(text_composing[2]));
								text_composing[0] = _char;
								text_composing_status = 1;
							}
						}
						else
						{
							if(string_length(text_composing[2]) == 1)
							{
								text += __kortext_get_composed_char(__kortext_get_cho_index(text_composing[0]),__kortext_get_joong_index(text_composing[1]));
							}
							else
							{
								text += __kortext_get_composed_char(__kortext_get_cho_index(text_composing[0]),__kortext_get_joong_index(text_composing[1]),__kortext_get_jong_index(string_copy(text_composing[2],1,1)));
							}
							text_composing[0] = string_copy(text_composing[2],string_length(text_composing[2]),1);
							text_composing[1] = _char;
							text_composing_status = 2;
						}
					}
				}
				else
				{
					switch(text_composing_status)
					{
						case 0: break;
						case 1:
						case 1.2: text += __kortext_get_alone_char(text_composing[0]); break;
						case 1.5: text += __kortext_get_alone_char(text_composing[1]); break;
						case 2: text += __kortext_get_composed_char(__kortext_get_cho_index(text_composing[0]),__kortext_get_joong_index(text_composing[1])); break;
						case 2.5: text += __kortext_get_alone_char(text_composing[1]); break;
						case 3: text += __kortext_get_composed_char(__kortext_get_cho_index(text_composing[0]),__kortext_get_joong_index(text_composing[1]),__kortext_get_jong_index(text_composing[2])); break;
					}
					text_composing_status = 0;
					
					text += _char;
				}
			}
		}
		
		return self;
	}
	
	function __kortext_backspace()
	{
		if(global.__kortext_language == "kr")
		{
			if(text_composing_status == 0)
			{
				text = string_delete(text,string_length(text),1);
			}
			else if(text_composing_status == 1)
			{
				text_composing_status = 0;
			}
			else if(text_composing_status == 1.2)
			{
				text_composing[0] = string_copy(text_composing[0],1,1);
				text_composing_status = 1;
			}
			else if(text_composing_status == 1.5)
			{
				text_composing_status = 0;
			}
			else if(text_composing_status == 2)
			{
				if(string_length(text_composing[1]) == 1)
				{
					text_composing_status = 1;
				}
				else
				{
					text_composing[1] = string_copy(text_composing[1],1,1);
					text_composing_status = 2;
				}
			}
			else if(text_composing_status == 2.5)
			{
				text_composing[1] = string_copy(text_composing[1],1,1);
				text_composing_status = 1.5;
			}
			else if(text_composing_status == 3)
			{
				if(string_length(text_composing[2]) == 2)
				{
					text_composing[2] = string_copy(text_composing[2],1,1);
					text_composing_status = 3;
				}
				else
				{
					text_composing_status = 2;
				}
			}
		}
		else
		{
			text = string_delete(text,string_length(text),1);
		}
	}
	
	static get_text = function()
	{
		switch(text_composing_status)
		{
			case 0: return text; break;
			case 1:
			case 1.2: return text+__kortext_get_alone_char(text_composing[0]); break;
			case 1.5: return text+__kortext_get_alone_char(text_composing[1]); break;
			case 2: return text+__kortext_get_composed_char(__kortext_get_cho_index(text_composing[0]),__kortext_get_joong_index(text_composing[1])); break;
			case 2.5: return text+__kortext_get_alone_char(text_composing[1]); break;
			case 3: return text+__kortext_get_composed_char(__kortext_get_cho_index(text_composing[0]),__kortext_get_joong_index(text_composing[1]),__kortext_get_jong_index(text_composing[2])); break;
		}
		
		return self;
	}
}

function __kortext_get_cho_index(str)// 초성 인덱스
{
	switch(str)
	{
		// 초성 인덱스
		case "r": return 0; // ㄱ
		case "R": return 1; // ㄲ
		case "s": return 2; // ㄴ
		case "e": return 3; // ㄷ
		case "E": return 4; // ㄸ
		case "f": return 5; // ㄹ
		case "a": return 6; // ㅁ
		case "q": return 7; // ㅂ
		case "Q": return 8; // ㅃ
		case "t": return 9; // ㅅ
		case "T": return 10; // ㅆ
		case "d": return 11; // ㅇ
		case "w": return 12; // ㅈ
		case "W": return 13; // ㅉ
		case "c": return 14; // ㅊ
		case "z": return 15; // ㅋ
		case "x": return 16; // ㅌ
		case "v": return 17; // ㅍ
		case "g": return 18; // ㅎ

		default: return 0; // 유효하지 않은 입력
	}
}

function __kortext_get_joong_index(str)// 중성 인덱스
{
	switch(str)
	{
		// 중성 인덱스
		case "k": return 0; // ㅏ
		case "o": return 1; // ㅐ
		case "i": return 2; // ㅑ
		case "O": return 3; // ㅒ
		case "j": return 4; // ㅓ
		case "p": return 5; // ㅔ
		case "u": return 6; // ㅕ
		case "P": return 7; // ㅖ
		case "h": return 8; // ㅗ
		case "hk": return 9; // ㅘ
		case "ho": return 10; // ㅙ
		case "hl": return 11; // ㅚ
		case "y": return 12; // ㅛ
		case "n": return 13; // ㅜ
		case "nj": return 14; // ㅝ
		case "np": return 15; // ㅞ
		case "nl": return 16; // ㅟ
		case "b": return 17; // ㅠ
		case "m": return 18; // ㅡ
		case "ml": return 19; // ㅢ
		case "l": return 20; // ㅣ

		default: return 0; // 유효하지 않은 입력
	}
}

function __kortext_get_jong_index(str)// 종성 인덱스
{
	switch (str) {
		case "r": return 1;  // "ㄱ"
		case "R": return 2;  // "ㄲ"
		case "rt": return 3; // "ㄳ"
		case "s": return 4;  // "ㄴ"
		case "sw": return 5; // "ㄵ"
		case "sg": return 6; // "ㄶ"
		case "e": return 7;  // "ㄷ"
		case "f": return 8;  // "ㄹ"
		case "fr": return 9; // "ㄺ"
		case "fa": return 10; // "ㄻ"
		case "fq": return 11; // "ㄼ"
		case "ft": return 12; // "ㄽ"
		case "fx": return 13; // "ㄾ"
		case "fv": return 14; // "ㄿ"
		case "fg": return 15; // "ㅀ"
		case "a": return 16;  // "ㅁ"
		case "q": return 17;  // "ㅂ"
		case "qt": return 19; // "ㅄ"
		case "t": return 19;  // "ㅅ"
		case "T": return 20;  // "ㅆ"
		case "d": return 21;  // "ㅇ"
		case "w": return 22;  // "ㅈ"
		case "c": return 23;  // "ㅊ"
		case "z": return 24;  // "ㅋ"
		case "x": return 25;  // "ㅌ"
		case "v": return 26;  // "ㅍ"
		case "g": return 27;  // "ㅎ"
		default: return 0;   // 종성이 없는 경우
	}
}

function __kortext_get_consonant_can_be_jong(eng_str) {
    var kor_consonant;
    
    switch (eng_str) {
        case "r": kor_consonant = "ㄱ"; break;
        case "R": kor_consonant = "ㄲ"; break;
        case "rt": kor_consonant = "ㄳ"; break;
        case "s": kor_consonant = "ㄴ"; break;
        case "sw": kor_consonant = "ㄵ"; break;
        case "sg": kor_consonant = "ㄶ"; break;
        case "e": kor_consonant = "ㄷ"; break;
        case "E": kor_consonant = "ㄸ"; break;
        case "f": kor_consonant = "ㄹ"; break;
        case "fr": kor_consonant = "ㄺ"; break;
        case "fa": kor_consonant = "ㄻ"; break;
        case "fq": kor_consonant = "ㄼ"; break;
        case "ft": kor_consonant = "ㄽ"; break;
        case "fx": kor_consonant = "ㄾ"; break;
        case "fv": kor_consonant = "ㄿ"; break;
        case "fg": kor_consonant = "ㅀ"; break;
        case "a": kor_consonant = "ㅁ"; break;
        case "q": kor_consonant = "ㅂ"; break;
        case "Q": kor_consonant = "ㅃ"; break;
        case "qt": kor_consonant = "ㅄ"; break;
        case "t": kor_consonant = "ㅅ"; break;
        case "T": kor_consonant = "ㅆ"; break;
        case "d": kor_consonant = "ㅇ"; break;
        case "w": kor_consonant = "ㅈ"; break;
        case "W": kor_consonant = "ㅉ"; break;
        case "c": kor_consonant = "ㅊ"; break;
        case "z": kor_consonant = "ㅋ"; break;
        case "x": kor_consonant = "ㅌ"; break;
        case "v": kor_consonant = "ㅍ"; break;
        case "g": kor_consonant = "ㅎ"; break;
        default: return false;
    }

    // 종성으로 사용 가능한 자음 리스트
    var final_consonants = "ㄱㄲㄳㄴㄵㄶㄷㄹㄺㄻㄼㄽㄾㄿㅀㅁㅂㅄㅅㅆㅇㅈㅊㅋㅌㅍㅎ";
    
    // 매핑된 한글 자음이 종성 리스트에 포함되는지 검사
    return (string_pos(kor_consonant, final_consonants) > 0);
}

function __kortext_get_char_type(str)//자음 모음 구분
{
	var _loop = 0;
	while(_loop <= 1)
	{
		switch(str)
		{
			// 초성 인덱스
			case "r": // ㄱ
			case "R": // ㄲ
			case "s": // ㄴ
			case "e": // ㄷ
			case "E": // ㄸ
			case "f": // ㄹ
			case "a": // ㅁ
			case "q": // ㅂ
			case "Q": // ㅃ
			case "t": // ㅅ
			case "T": // ㅆ
			case "d": // ㅇ
			case "w": // ㅈ
			case "W": // ㅉ
			case "c": // ㅊ
			case "z": // ㅋ
			case "x": // ㅌ
			case "v": // ㅍ
			case "g": return 0; // ㅎ

			// 중성 인덱스
			case "k": // ㅏ
			case "o": // ㅐ
			case "i": // ㅑ
			case "O": // ㅒ
			case "j": // ㅓ
			case "p": // ㅔ
			case "u": // ㅕ
			case "P": // ㅖ
			case "h": // ㅗ
			case "hk": // ㅘ
			case "ho": // ㅙ
			case "hl": // ㅚ
			case "y": // ㅛ
			case "n": // ㅜ
			case "nj": // ㅝ
			case "np": // ㅞ
			case "nl": // ㅟ
			case "b": // ㅠ
			case "m": // ㅡ
			case "ml": // ㅢ
			case "l": return 1; // ㅣ
		}
		
		str = string_lower(str);
		_loop++;
	}
	
	return "ㅇ";
}

function __kortext_get_char_is_composable_consonant(str1,str2)
{
	if(str1 == "r")
	{
		if(str2 == "t")
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	if(str1 == "s")
	{
		if(str2 == "w" or str2 == "g")
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	if(str1 == "f")
	{
		if(str2 == "r" or str2 == "a" or str2 == "q" or str2 == "t" or str2 == "x" or str2 == "v" or str2 == "g")
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}

function __kortext_get_char_is_composable_gather(str1,str2)
{
	if(str1 == "h")
	{
		if(str2 == "k" or str2 == "o" or str2 == "l")
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	if(str1 == "n")
	{
		if(str2 == "j" or str2 == "p" or str2 == "l")
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	if(str1 == "m")
	{
		if(str2 == "l")
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}

function __kortext_get_composed_char(cho = 0, joong = 0, jong = 0)
{
	return chr((cho * 588) + (joong * 28) + jong + 44032);
}

function __kortext_get_alone_char(str)
{
	var _loop = 0;
	while(_loop <= 1)
	{
		switch(str)
		{
			case "r": return "ㄱ";
			case "R": return "ㄲ";
			case "rt": return "ㄳ";
			case "s": return "ㄴ";
			case "sw": return "ㄵ";
			case "sg": return "ㄶ";
			case "e": return "ㄷ";
			case "E": return "ㄸ";
			case "f": return "ㄹ";
			case "fr": return "ㄺ";
			case "fa": return "ㄻ";
			case "fq": return "ㄼ";
			case "ft": return "ㄽ";
			case "fx": return "ㄾ";
			case "fv": return "ㄿ";
			case "fg": return "ㅀ";
			case "a": return "ㅁ";
			case "q": return "ㅂ";
			case "Q": return "ㅃ";
			case "qt": return "ㅄ";
			case "t": return "ㅅ";
			case "T": return "ㅆ";
			case "d": return "ㅇ";
			case "w": return "ㅈ";
			case "W": return "ㅉ";
			case "c": return "ㅊ";
			case "z": return "ㅋ";
			case "x": return "ㅌ";
			case "v": return "ㅍ";
			case "g": return "ㅎ";
			case "k": return "ㅏ";
			case "o": return "ㅐ";
			case "i": return "ㅑ";
			case "O": return "ㅒ";
			case "j": return "ㅓ";
			case "p": return "ㅔ";
			case "u": return "ㅕ";
			case "P": return "ㅖ";
			case "h": return "ㅗ";
			case "hk": return "ㅘ";
			case "ho": return "ㅙ";
			case "hl": return "ㅚ";
			case "y": return "ㅛ";
			case "n": return "ㅜ";
			case "nj": return "ㅝ";
			case "np": return "ㅞ";
			case "nl": return "ㅟ";
			case "b": return "ㅠ";
			case "m": return "ㅡ";
			case "ml": return "ㅢ";
			case "l": return "ㅣ";
		}
		
		str = string_lower(str);
		_loop++;
	}
	
	return "ㅇ";
}

function kortext_set_language(){
	if(set_language(window_handle()))
	{
		if(global.__kortext_language == "en")
		{
			global.__kortext_language = "kr";
		}
		else
		{
			global.__kortext_language = "en";
		}
	}
}