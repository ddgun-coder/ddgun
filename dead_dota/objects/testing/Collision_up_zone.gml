/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E55BEFB
/// @DnDArgument : "code" "if (keyboard_check_pressed(ord("f")) or keyboard_check_pressed(ord("F"))) {$(13_10)	if (pickaxe_up >= 1)$(13_10)	{$(13_10)		if (global.pickaxe_num[global.pickaxe_index - spr_pickaxe1] < 9)$(13_10)		{$(13_10)			$(13_10)			pickaxe_up -= 1;$(13_10)			global.pickaxe_num[global.pickaxe_index - spr_pickaxe1] += 1;$(13_10)			mine_say = "강화 성공 현제:+" + string($(13_10)			global.pickaxe_num[global.pickaxe_index - spr_pickaxe1]) + "강";$(13_10)			mine_say_time = 100;$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			mine_say = "9강이 풀강이야"$(13_10)			mine_say_time = 100;$(13_10)		}$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		mine_say = "강화주문서가 없엉"$(13_10)		mine_say_time = 100;$(13_10)	}$(13_10)}"
if (keyboard_check_pressed(ord("f")) or keyboard_check_pressed(ord("F"))) {
	if (pickaxe_up >= 1)
	{
		if (global.pickaxe_num[global.pickaxe_index - spr_pickaxe1] < 9)
		{
			
			pickaxe_up -= 1;
			global.pickaxe_num[global.pickaxe_index - spr_pickaxe1] += 1;
			mine_say = "강화 성공 현제:+" + string(
			global.pickaxe_num[global.pickaxe_index - spr_pickaxe1]) + "강";
			mine_say_time = 100;
		}
		else
		{
			mine_say = "9강이 풀강이야"
			mine_say_time = 100;
		}
	}
	else
	{
		mine_say = "강화주문서가 없엉"
		mine_say_time = 100;
	}
}