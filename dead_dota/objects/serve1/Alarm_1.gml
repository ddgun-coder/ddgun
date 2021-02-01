/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 24B13C01
/// @DnDArgument : "code" "date=date_current_datetime();$(13_10)date2 = date_create_datetime($(13_10)date_get_year(date),date_get_month(date),$(13_10)date_get_day(date),date_get_hour(date),$(13_10)date_get_minute(date),date_get_second(date) - 1);$(13_10)if date_compare_datetime(ftime2,date2)= -1 // 현재 시간 - 1이 예측한 시간보다 작을경우$(13_10){$(13_10)	OK2 += 1;$(13_10)}$(13_10)else {$(13_10)	OK2 = 0;	$(13_10)}$(13_10)ftime2 = date_create_datetime($(13_10)date_get_year(date),date_get_month(date),$(13_10)date_get_day(date),date_get_hour(date),$(13_10)date_get_minute(date),date_get_second(date)+delay);$(13_10)alarm[1]=room_speed * delay;"
date=date_current_datetime();
date2 = date_create_datetime(
date_get_year(date),date_get_month(date),
date_get_day(date),date_get_hour(date),
date_get_minute(date),date_get_second(date) - 1);
if date_compare_datetime(ftime2,date2)= -1 // 현재 시간 - 1이 예측한 시간보다 작을경우
{
	OK2 += 1;
}
else {
	OK2 = 0;	
}
ftime2 = date_create_datetime(
date_get_year(date),date_get_month(date),
date_get_day(date),date_get_hour(date),
date_get_minute(date),date_get_second(date)+delay);
alarm[1]=room_speed * delay;