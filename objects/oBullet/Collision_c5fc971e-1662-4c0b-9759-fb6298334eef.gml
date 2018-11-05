/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 67F9072D
/// @DnDArgument : "code" "audio_play_sound(sHit,0,0)$(13_10)$(13_10)with (other)$(13_10){$(13_10)	hp--;$(13_10)	flash = 3$(13_10)	hitfrom = other.direction;$(13_10)}	$(13_10)instance_destroy();"
audio_play_sound(sHit,0,0)

with (other)
{
	hp--;
	flash = 3
	hitfrom = other.direction;
}	
instance_destroy();