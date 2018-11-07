/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 42F13BE2
/// @DnDArgument : "code" "with (oPlayer)$(13_10){$(13_10)	if (hascontrol)$(13_10)	{$(13_10)		hascontrol = false;$(13_10)		Transitions(TRANS_MODE.GOTO,other.target);$(13_10)	}$(13_10)}"
with (oPlayer)
{
	if (hascontrol)
	{
		hascontrol = false;
		Transitions(TRANS_MODE.GOTO,other.target);
	}
}