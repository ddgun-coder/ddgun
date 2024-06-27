var snd = nu_3_sound_bang;
switch(cid_id.skin) {
	case 1 :
		sprite_index = spr_nu_skin1;
		snd = nu_3_sound_bang_skin1;
	break;	
}
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]) + dy;
image_xscale = sprite_width / global.window_width;
image_yscale = sprite_height / global.window_height;

if (sound_check) {
	audio_play_sound(nu_3_sound_bang, 9, false);
	sound_check = false;	
}
if(be_inv == true) {
	image_alpha -= 0.02;	
}
image_angle = 0;
dy -= 3;
