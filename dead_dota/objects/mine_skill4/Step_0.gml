/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10035BA3
/// @DnDArgument : "code" "x = camera_get_view_x(view_camera[view_current]) + ranx;$(13_10)y = camera_get_view_y(view_camera[view_current]) + rany;$(13_10)image_angle = 0;$(13_10)if (team == global.team) {$(13_10)	if (testing.hp < testing.m_hp) {$(13_10)		testing.hp += 0.05;	$(13_10)	}$(13_10)}"
x = camera_get_view_x(view_camera[view_current]) + ranx;
y = camera_get_view_y(view_camera[view_current]) + rany;
image_angle = 0;
if (team == global.team) {
	if (testing.hp < testing.m_hp) {
		testing.hp += 0.05;	
	}
}