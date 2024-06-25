/// @description Insert description here
// You can write your code in this editor
if (special) {
	make_operation_rand(4, true);
}
else {
	make_operation_rand(3);	
}

var temp_index = 0;
if (abs(answer) <= 2) {
	if (frac(answer) == 0) {
		answer_array = [1, 2, 3, 4, 5, -1, -2, -3, -4, -5];
		var num = array_length(answer_array);
		for (var i = 0; i < num; i++){ 
			answer_array[i] += answer;
		}
	}
	else {
		answer_array = [0.1, 0.2, 0.4, 0.8, 1.1, -1, -0.5, -0.2, -0.1];
		var num = array_length(answer_array);
		for (var i = 0; i < num; i++){ 
			answer_array[i] += answer;
		}
	}
}
else {
	if (frac(answer) == 0) {
		answer_array = [2, 1, 4, -4, -2, -1, -25, -1, 91, 69];
		var num = array_length(answer_array);
		for (var i = 0; i < num; i++) {
			answer_array[i] += answer;
		}
	}
	else {
		answer_array = [0.2, 0.6, 1.1, 2.2, 0.34, 0.69, 0.28, 0.1, 10, 25];
		var num = array_length(answer_array);
		for (var i = 0; i < num; i++) {
			answer_array[i] *= answer;
		}
	}
}
answer_array = array_shuffle(answer_array);
array_insert(answer_array, answer_index, answer);













