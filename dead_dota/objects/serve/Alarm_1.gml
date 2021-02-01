var date = date_current_datetime();
date2 = date_create_datetime(
date_get_year(date),date_get_month(date),
date_get_day(date),date_get_hour(date),
date_get_minute(date),date_get_second(date) - 1);

if date_compare_datetime(ftime2,date2)= -1 // 현재 시간 - 1이 예측한 시간보다 작을경우
{
	OK2 += 1;
}

ftime2 = date_create_datetime(
date_get_year(date),date_get_month(date),
date_get_day(date),date_get_hour(date),
date_get_minute(date),date_get_second(date)+ 3);
alarm[1]= room_speed * 3;