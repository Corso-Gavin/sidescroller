/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 52C0E928
/// @DnDArgument : "code" "audio_play_sound(sHit,0,0)$(13_10)$(13_10)with (other)$(13_10){$(13_10)	hp = hp -4;$(13_10)	flash = 3$(13_10)	hitfrom = other.direction;$(13_10)}	"
audio_play_sound(sHit,0,0)

with (other)
{
	hp = hp -4;
	flash = 3
	hitfrom = other.direction;
}