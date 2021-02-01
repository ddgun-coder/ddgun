/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 618EB178
/// @DnDArgument : "code" "if (instance_number(obj_bronze_wing) < 20) {$(13_10)	while(true) {$(13_10)	xx = irandom(room_width);$(13_10)	yy = irandom(room_height);$(13_10)	if(place_free(xx,yy)) {$(13_10)		instance_create_depth(xx, yy, -1000, obj_bronze_wing);$(13_10)		break;$(13_10)	}$(13_10)	}$(13_10)}$(13_10)if (instance_number(obj_silversing) < 10) {$(13_10)	while(true) {$(13_10)	xx = irandom(room_width);$(13_10)	yy = irandom(room_height);$(13_10)	if(place_free(xx,yy)) {$(13_10)		instance_create_depth(xx, yy, -1000, obj_silversing);$(13_10)		break;$(13_10)	}$(13_10)	}$(13_10)}$(13_10)if (instance_number(obj_goldwing) < 1) {$(13_10)	while(true) {$(13_10)	xx = irandom(room_width);$(13_10)	yy = irandom(room_height);$(13_10)	if(place_free(xx,yy)) {$(13_10)		instance_create_depth(xx, yy, -1000, obj_goldwing);$(13_10)		break;$(13_10)	}$(13_10)	}$(13_10)}"
if (instance_number(obj_bronze_wing) < 20) {
	while(true) {
	xx = irandom(room_width);
	yy = irandom(room_height);
	if(place_free(xx,yy)) {
		instance_create_depth(xx, yy, -1000, obj_bronze_wing);
		break;
	}
	}
}
if (instance_number(obj_silversing) < 10) {
	while(true) {
	xx = irandom(room_width);
	yy = irandom(room_height);
	if(place_free(xx,yy)) {
		instance_create_depth(xx, yy, -1000, obj_silversing);
		break;
	}
	}
}
if (instance_number(obj_goldwing) < 1) {
	while(true) {
	xx = irandom(room_width);
	yy = irandom(room_height);
	if(place_free(xx,yy)) {
		instance_create_depth(xx, yy, -1000, obj_goldwing);
		break;
	}
	}
}