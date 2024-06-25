/// @description Insert description here
// You can write your code in this editor
anim_clock = 0;
curve = animcurve_get(ac_fast);
channel = curve.channels[1];
question_time_max = 500;
alarm[0] = question_time_max;
x -= sprite_width;
special = false;
drop = false;
reverse_time = -1;
reverse_time_start = false;
reverse = false;
is_skilled = false;
audio_play_sound(snd_question_notice, 0, false);

enum QR { 
	correct,
	not_correct,
	none
}

your_choice = noone;
oper_str = "";
answer = -1;
oper_array = [];
x_array = array_create(4, false);

function make_operation_rand(_num, bracket = false) {
	if (_num <= 1) return;
	var term = [];
	var oper = [];
	var number_size = 10;
	oper_str = "";
	answer = 0;
	oper_array[0] = irandom(number_size);
	for (var i = 1; i < _num; i++) {
		oper_array[2 * i - 1] = choose("+", "-", "*", "/");
		if (oper_array[2 * i - 1] == "/") {
			oper_array[2 * i] = irandom_range(1, number_size);
		}
		else {
			oper_array[2 * i] = irandom(number_size);
		}
	}
	
	if (bracket) {
		var val1 = irandom(_num - 1);
		var val2 = irandom(_num - 1);
		while (val1 == val2 and !(val1 == 0 and val2 == _num - 1)) {
			val1 = irandom(_num - 1);
			
		}

		if (val1 < val2) {
			array_insert(oper_array, val2 * 2 + 1, ")");
			array_insert(oper_array, val1 * 2, "(");
		}
		else {
			array_insert(oper_array, val1 * 2 + 1, ")");
			array_insert(oper_array, val2 * 2, "(");
		}
	}
	
	num = array_length(oper_array);
	for (var i = 0; i < num; i++) {
		if (oper_array[i] == "*") {
			oper_str += " ×";
		}
		else {
			oper_str += " " + string(oper_array[i]);		
		}
	}
	get_answer(oper_array);
}

function get_answer(_oper_array) {
	function check_porp(str1, str2) {
		if (str1 == "(") return true;
		if (str1 == "+" or str1 == "-") {
			if (str2 == "*" or str2 == "/") {
				return true;
			}
		}
		return false;
	}
	var stack = ds_stack_create();
	var num = array_length(_oper_array);
	var postfix = [];
	var sub_num, top, token;
	for (var i = 0; i < num; i++) {
		token = _oper_array[i];
		if (is_string(token)) {
			if (token == "(" or ds_stack_top(stack) == "(") {
				ds_stack_push(stack, token);
			}
			else if (token == ")") {
				while (ds_stack_top(stack) != "(") {
					array_push(postfix, ds_stack_pop(stack));
				}
				ds_stack_pop(stack);
			}
			else {
				while (true) {
					if (ds_stack_empty(stack) or check_porp(ds_stack_top(stack), token)) {
						ds_stack_push(stack, token);
						break;
					}
					else {
						array_push(postfix, ds_stack_pop(stack));	
					}		
				}
			}
		}
		else {
			array_push(postfix, token);	
		}
	}
	while (!ds_stack_empty(stack)) {
		token = ds_stack_pop(stack);
		if (token != "(" and token != ")") {
			array_push(postfix, token);		
		}
	}

	var val1, val2, result;
	for (var i = 0; i < array_length(postfix); i++) {
		if (is_string(postfix[i])) {
			val2 = ds_stack_pop(stack);
			val1 = ds_stack_pop(stack);
			switch(postfix[i]) {
				case "+" :
					result = val1 + val2;
					break;
				case "-" :
					result = val1 - val2;
					break;
				case "*" :
					result = val1 * val2;
					break;
				case "/" :
					result = val1 / val2;
					break;
			}
			ds_stack_push(stack, result);
		}
		else {
			ds_stack_push(stack, postfix[i]);
		}
	}
	answer = ds_stack_pop(stack);
	ds_stack_destroy(stack);
}

answer_index = irandom(3);
answer_array = [1, 1, 1, 1];
question_time = [0, 0, 0, 0];
question_result = noone;

alarm[1] = 1;