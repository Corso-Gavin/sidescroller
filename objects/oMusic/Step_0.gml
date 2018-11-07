/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31397923
/// @DnDArgument : "code" "if music = 1$(13_10){$(13_10)	if music_name != 1$(13_10)	{$(13_10)		audio_stop_all();$(13_10)		audio_play_sound(mMegalovania,100,1);$(13_10)		music_name = 1;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)if music = 2$(13_10){$(13_10)	if music_name != 2$(13_10)	{$(13_10)		audio_stop_all();$(13_10)		audio_play_sound(mRainOrEnding,100,1);$(13_10)		music_name = 2;$(13_10)	}$(13_10)}$(13_10)$(13_10)if music = 3$(13_10){$(13_10)	if music_name != 3$(13_10)	{$(13_10)		audio_stop_all();$(13_10)		audio_play_sound(mMenu,100,1);$(13_10)		music_name = 3;$(13_10)	}$(13_10)}$(13_10)"
if music = 1
{
	if music_name != 1
	{
		audio_stop_all();
		audio_play_sound(mMegalovania,100,1);
		music_name = 1;
	}
}


if music = 2
{
	if music_name != 2
	{
		audio_stop_all();
		audio_play_sound(mRainOrEnding,100,1);
		music_name = 2;
	}
}

if music = 3
{
	if music_name != 3
	{
		audio_stop_all();
		audio_play_sound(mMenu,100,1);
		music_name = 3;
	}
}