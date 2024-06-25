/// @description Insert description here
// You can write your code in this editor
var dy = floor((mouse_y - testing.cur_yview - ystart) / 15);
dy = 6 - dy
if (dy <= 0) exit;
var str = variable_instance_get(testing.id, "chat" + string(dy));
var max_chat = string_length(str);
var has = false;
var name = "";
for (var i = 1; i < max_chat; i++) {
   var at_s = string_char_at(str, i);
   if (at_s == "▶ ") {
      has = true;
      break;
   }
   else {
      name += at_s;
   }
}
if (has) {
   var len = ds_list_size(global.ban_say);
   for (var i = 0; i < len; i++) {
      if (global.ban_say[| i] == name) {
         exit;
      }   
   }
   testing.chat6 = testing.chat5;
   testing.chat5 = testing.chat4;
   testing.chat4 = testing.chat3;
   testing.chat3 = testing.chat2;
   testing.chat2 = testing.chat1;
   draw_set_color(c_aqua);
   testing.chat1 = name + "이 차단됨";
   draw_set_color(c_white);
   ds_list_add(global.ban_say, name);
}