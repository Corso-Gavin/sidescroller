/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 740A370D
/// @DnDArgument : "code" "if place_meeting(x,y,obj_wall) {$(13_10)	direction = direction +90;$(13_10)	speed--;$(13_10)}"
if place_meeting(x,y,obj_wall) {
	direction = direction +90;
	speed--;
}