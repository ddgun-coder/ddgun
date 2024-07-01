if (room == room_main) {
	instance_destroy()
}
if (keyboard_check(vk_shift)) {
	text.input(string_upper(keyboard_string));
}
else {
	text.input(string_lower(keyboard_string));
}

keyboard_string = "";

if(keyboard_check(vk_backspace)){text.input(-1);}