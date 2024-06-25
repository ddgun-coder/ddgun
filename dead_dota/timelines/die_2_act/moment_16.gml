/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7D93B9F5
/// @DnDArgument : "code" "arm_type = "attack"$(13_10)arm_movement(0, -3, 0, 10);$(13_10)switch(level) {$(13_10)	$(13_10)case 1:$(13_10)server78_create_instace(die_skill2_2, x + lengthdir_x(14 * big_val, YA - 90), y + lengthdir_y(14 * big_val, YA - 90));$(13_10)break;$(13_10)$(13_10)case 2:$(13_10)server78_create_instace(die_skill3_2, x + lengthdir_x(14 * big_val, YA - 90), y + lengthdir_y(14 * big_val, YA - 90));$(13_10)break;$(13_10)$(13_10)case 3:$(13_10)server78_create_instace(die_skill3_2, x + lengthdir_x(14 * big_val, YA - 90), y + lengthdir_y(14 * big_val, YA - 90));$(13_10)break;$(13_10)$(13_10)}"
arm_type = "attack"
arm_movement(0, -3, 0, 10);
switch(level) {
	
case 1:
server78_create_instace(die_skill2_2, x + lengthdir_x(14 * big_val, YA - 90), y + lengthdir_y(14 * big_val, YA - 90));
break;

case 2:
server78_create_instace(die_skill3_2, x + lengthdir_x(14 * big_val, YA - 90), y + lengthdir_y(14 * big_val, YA - 90));
break;

case 3:
server78_create_instace(die_skill3_2, x + lengthdir_x(14 * big_val, YA - 90), y + lengthdir_y(14 * big_val, YA - 90));
break;

}