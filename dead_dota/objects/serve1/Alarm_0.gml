date=date_current_datetime();

if date_compare_datetime(date,ftime1)=-1 // 현재 시간이 예측한 시간보다 작을경우
{
	OK += 1;
}
else {
	OK = 0;	
}

ftime1=date_create_datetime(
date_get_year(date),date_get_month(date),
date_get_day(date),date_get_hour(date),
date_get_minute(date),date_get_second(date) + delay);

alarm[0]=40*delay;