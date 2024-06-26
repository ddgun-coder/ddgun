if (room == room_main) {
	instance_destroy()
}

text.input(keyboard_string);
keyboard_string = "";

if(keyboard_check(vk_backspace)){text.input(-1);}