var date = date_current_datetime();
var dt = 0;
if date_compare_datetime(ftime1,date)= -1// 현재 시간이 예측한 시간보다 작을경우
{
   dt = date_second_span(ftime1, date);
}
else {
   dt = date_second_span(date, ftime1);
}

if (dt > 2) {
   testing.hp -= 55;
   testing.sturn = 50;
   testing.aexp = 0;
   testing.buff_index = buff_apple3
   testing.buff_time = 40;
   prt_val_add(Val.mp, -75)   
   prt_val_add(Val.gi, -150)
   for(var i = 0; i < MAX_ITME_BOX; i++) {
       global.item_time[i] = 0;
    }
}

ftime1= date_inc_second(date, delay)

alarm[0]= 40 * delay;