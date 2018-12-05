/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5225825D
/// @DnDArgument : "code" "///@desc check to change aura$(13_10)alarm_set(alarm[0],30);$(13_10)if alpha1 != 0.1$(13_10){$(13_10)	alpha1 -= 0.1;$(13_10)}$(13_10)if alpha2 != 0.5$(13_10){$(13_10)	alpha2 -= 0.2;$(13_10)}$(13_10)"
///@desc check to change aura
alarm_set(alarm[0],30);
if alpha1 != 0.1
{
	alpha1 -= 0.1;
}
if alpha2 != 0.5
{
	alpha2 -= 0.2;
}