if (global.intuto) exit;
only_hat = true;
all_spin_limit = 0;
var where = "room_spin";

var room_name_array = ["돌다리", "지하철", "게이바", "카지노", "개미굴", "저녁숲", "꽃동산", "UFO", "묘방성", "검투장", "하수도", "대병원", "데스헬", "아레나", "드레곤", "축구장", "천사굴", "돌리다", "수영장",
"99플루톤", "마법성", "용검성", "도타볼", "불광동", "대병원2", "레이싱", "석굴암", "수영장2", "하늘성", "기숙사", "굴2"];
var room_array = ["room_rock", "room_play", "room_gaybar", "room_kazino", "room_ant", "room_night_forest", "room_flower", "room_UFO", "room_mu", "room_sward", "room_under", "room_hos", "room_hell", "room_arena", "room_dragon", "room_soccer", "room_1004", "room_spin", "room_sea",
"room_l", "room_magic", "room_dragon_sward", "room_ball", "room_bolguang", "room_hos1", "room_racing", "room_rock_cave", "room_sea2", "room_sky", "room_study", "room_antcave"];
var num = array_length(room_name_array);

if (global.hat == spr_hat31 and level == 3) {
   var check = false;
   for (var i = 0; i < num; i++) {
      if (global.chat == room_name_array[i]) {
         where = room_array[i];
         check = true;
      }
   }
   
   if (check == false) {
      while(true) {
         var _rand= irandom(num - 1);
         if (room_name_array[_rand] != serve.cur_room) {
            where = room_array[_rand];
            break;
         }
      }
   }
}
else {
   while(true) {
      var _rand= irandom(num - 1);
      if (room_name_array[_rand] != serve.cur_room) {
         where = room_array[_rand];
         break;
      }
   }
}
if (serve.num_client >= 8) {
   if (where == "room_ball") {
      while(true) {
         var _rand= irandom(num - 1);
         if (room_name_array[_rand] != serve.cur_room) {
            where = room_array[_rand];
            break;
         }
      }
   }
}
server77_equal(serve_val.only_hat, only_hat, buffer_bool);
buffer_seek(buff_chat, buffer_seek_start, 0);
         
buffer_write(buff_chat, buffer_u8, 205);
buffer_write(buff_chat, buffer_string, where);

network_send_packet(0,buff_chat,buffer_tell(buff_chat));