function scr_step() {
	if (room == room_main) {
		instance_destroy(testhat)
		instance_destroy()
		exit;
	}	
	if (say_time > 0){
		say_time -=1;
	}//말 사라짐
	alive--;
	if (room == room_ghost) {
		draw_hat = spr_hat37;
	}
	else {
		draw_hat = hat;
	}//할로윈
	if (sturn > 0) {
			sturn -= 1;
		}//스턴값 줄이기
	switch(face_variable)
	{
		case 1:
			if (face_frame < 5)
				if (face_frame_num = 0)
				{
					face_frame += 1
					face_frame_num = 10;
				}
		break;
		default:
			face_frame = 0;
		break;
	}
	if (mouse_check_button_pressed(mb_right)) {
		if (distance_to_point(mouse_x, mouse_y) < 10) { 
			if (testing.chat_point == 1) {
				var ind = real(string_digits(object_get_name(object_index)));
				keyboard_string += serve.serve_name[ind];
			}
		}
	}
	if (face_frame_num > 0) {
		face_frame_num -= 1;
	}
	if (instance_exists(testing)) {
		if (testing.cid == cid)
		{
			solid = false;
		}
		else {
			if (distance_to_point(testing.x, testing.y) < 3) {
				solid = false;
			}
			else  {
				solid = true;
			}
		}
	}
	if (x < 0 and y < 0) {
		big_val = 1;
		visible = false
	}
	else {
		visible = true;	
	}
	if (global.my_cid_id == object_index)
	{
		if (global.show_me == false) {
			visible = false;
		}
	}
	else {
		visible = true;
	}
}