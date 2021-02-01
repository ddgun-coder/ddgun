/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 10C1167A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_team_effect"
/// @DnDSaveInfo : "sprite" "spr_team_effect"
draw_sprite(spr_team_effect, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 075E1353
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_team_button"
/// @DnDSaveInfo : "sprite" "spr_team_button"
draw_sprite(spr_team_button, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1F578439
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_team_button"
/// @DnDArgument : "image" "1"
/// @DnDSaveInfo : "sprite" "spr_team_button"
draw_sprite(spr_team_button, 1, x + 0, y + 0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 698AD75B
/// @DnDArgument : "code" "draw_sprite(spr_team_effect,global.team + 1,x,y);"
draw_sprite(spr_team_effect,global.team + 1,x,y);

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3391E46E
/// @DnDArgument : "spriteind" "spr_team_button"
/// @DnDSaveInfo : "spriteind" "spr_team_button"
sprite_index = spr_team_button;
image_index = 0;