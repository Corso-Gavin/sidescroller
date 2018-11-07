/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 432D0CEC
/// @DnDArgument : "code" "music_name = 1$(13_10)music = 3$(13_10)$(13_10)$(13_10)if room = rMenu$(13_10){$(13_10)	music = 3;$(13_10)}$(13_10)if room = rOne$(13_10){$(13_10)	music = 2;$(13_10)}$(13_10)if room = rTwo$(13_10){$(13_10)	music = 2;$(13_10)}$(13_10)if room = rThree$(13_10){$(13_10)	music = 2;$(13_10)}$(13_10)$(13_10)if music = 0$(13_10){$(13_10)	audio_stop_all();$(13_10)	audio_play_sound(mMenu,100,1);$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
music_name = 1
music = 3


if room = rMenu
{
	music = 3;
}
if room = rOne
{
	music = 2;
}
if room = rTwo
{
	music = 2;
}
if room = rThree
{
	music = 2;
}

if music = 0
{
	audio_stop_all();
	audio_play_sound(mMenu,100,1);
}