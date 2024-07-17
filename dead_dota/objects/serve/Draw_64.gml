/// @description Insert description here
// You can write your code in this editor
var camera_x = 0;
var camera_y = view_get_yport(0);
var show_this = "";
left_n = 0;
right_n = 0;
var left_list = ds_list_create();
var right_list = ds_list_create();

for (var j = 1; j <= 24; j++) {
    if (team[j] == 0) {
        if (instance_exists(score_0_team)) {
            if (serve_name[j] != "") {
                if (ds_list_find_index(global.ban_say, serve_name[j]) == -1) {
                    show_this = "[" + string(pow[j]) + "]" + serve_name[j];
                } else {
                    show_this = "[" + string(pow[j]) + "]" + serve_name[j] + "(차단)";
                }
                draw_set_halign(fa_left);
                draw_set_color(c_black);
                draw_text_bold(camera_x + score_0_team.x, camera_y + score_0_team.y + 12 * left_n, show_this);
                draw_set_color(c_red);
                draw_text(camera_x + score_0_team.x, camera_y + score_0_team.y + 12 * left_n, show_this);
                ds_list_add(left_list, serve_name[j]);
                left_n++;
            }
        }
    } else {
        if (instance_exists(score_1_team)) {
            if (serve_name[j] != "") {
                if (ds_list_find_index(global.ban_say, serve_name[j]) == -1) {
                    show_this = serve_name[j] + "[" + string(pow[j]) + "]";
                } else {
                    show_this = serve_name[j] + "[" + string(pow[j]) + "]" + "(차단)";
                }
                draw_set_halign(fa_right);
                draw_set_color(c_black);
                draw_text_bold(camera_x + score_1_team.x + score_1_team.sprite_width, camera_y + score_1_team.y + 12 * right_n, show_this);
                draw_set_color(c_yellow);
                draw_text(camera_x + score_1_team.x + score_1_team.sprite_width, camera_y + score_1_team.y + 12 * right_n, show_this);
                ds_list_add(right_list, serve_name[j]);
                right_n++;
            }
        }
    }
}

if (mouse_check_button_pressed(mb_right)) {
    var ind = -1;
    with (score_0_team) {
        if (point_in_rectangle(mouse_x, mouse_y, x + camera_x, y + camera_y, x + sprite_width + camera_x, y + sprite_height + camera_y)) {
            var _name = left_list[| floor((mouse_y - y - camera_y) / 12)];
            ind = ds_list_find_index(global.ban_say, _name);
        }
    }
    with (score_1_team) {
        if (point_in_rectangle(mouse_x, mouse_y, x + camera_x, y + camera_y, x + sprite_width + camera_x, y + sprite_height + camera_y)) {
            var _name = right_list[| floor((mouse_y - y - camera_y) / 12)];
            ind = ds_list_find_index(global.ban_say, _name);
        }
    }
    if (ind != -1) {
        testing.chat6 = testing.chat5;
        testing.chat5 = testing.chat4;
        testing.chat4 = testing.chat3;
        testing.chat3 = testing.chat2;
        testing.chat2 = testing.chat1;
        testing.chat1 = _name + "이 차단해제됨";
        ds_list_delete(global.ban_say, ind);
    }
}

ds_list_destroy(left_list);
ds_list_destroy(right_list);
num_client = right_n + left_n;
draw_set_halign(fa_center);
for (j = 0; j <= 3; ++j) {
    draw_set_color(c_black);
    draw_text_ext_transformed(camera_x + 512, camera_y + 151 - 20 * j, green_text[j], 1, 300, 1.2, 1.2, 0);
    draw_text_ext_transformed(camera_x + 513, camera_y + 150 - 20 * j, green_text[j], 1, 300, 1.2, 1.2, 0);
    draw_text_ext_transformed(camera_x + 511, camera_y + 150 - 20 * j, green_text[j], 1, 300, 1.2, 1.2, 0);
    draw_text_ext_transformed(camera_x + 512, camera_y + 149 - 20 * j, green_text[j], 1, 300, 1.2, 1.2, 0);
    draw_set_color(c_lime);
    draw_text_ext_transformed(camera_x + 512, camera_y + 150 - 20 * j, green_text[j], 1, 300, 1.2, 1.2, 0);
}
if (nu_time > 0) {
    nu_time -= 1;
    draw_set_color(c_white);
    draw_sprite_ext(spr_nutitle, 0, camera_x + 70, camera_y + 25, 1.8, 1, 0, 0, 0.4);
    draw_sprite_ext(spr_score, 0, camera_x + 100, camera_y + 150, 2, 2, 0, 0, 0.4);
    draw_sprite_ext(spr_score, 0, camera_x + 700, camera_y + 150, 2, 2, 0, 0, 0.4);
    draw_text_ext_transformed(camera_x + 550, camera_y + 450, "고인의 명복에 액션빔.", 1, 300, 1, 1, 0);
    draw_set_color(c_red);
    for (j = 0; j <= 24; ++j) {
        draw_text_ext_transformed(camera_x + 150, camera_y + 150 + 20 * j, nu_name_left[j], 1, 300, 1.2, 1.2, 0);
    }
    draw_set_color(c_yellow);
    for (j = 0; j <= 24; ++j) {
        draw_text_ext_transformed(camera_x + 750, camera_y + 150 + 20 * j, nu_name_right[j], 1, 300, 1.2, 1.2, 0);
    }
    draw_set_color(c_white);
}
draw_set_color(c_white);
if (last_time > 0) {
    if (win == 0) {
        var wherel = "우파";
        var wherew = "좌파";
    }
	else {
        var wherew = "우파";
        var wherel = "좌파";
	}
}