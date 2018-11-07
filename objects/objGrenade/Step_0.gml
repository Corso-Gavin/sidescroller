/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 00760343
/// @DnDArgument : "code" "if place_meeting(x,y,obj_wall)$(13_10){$(13_10)	direction = direction+90;$(13_10)	speed--;$(13_10)}$(13_10)speed = speed - 0.01;"
if place_meeting(x,y,obj_wall)
{
	direction = direction+90;
	speed--;
}
speed = speed - 0.01;