/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5D9C2B2F
/// @DnDArgument : "code" "hsp = 3;$(13_10)vsp = -4;$(13_10)grv = 0.1;$(13_10)done = 0;$(13_10)$(13_10)image_speed = 0;$(13_10)image_index = 0;$(13_10)shakescreen(3,60);$(13_10)audio_play_sound(sHit,1000,false);$(13_10)game_set_speed(30,gamespeed_fps);$(13_10)with (oCamera) follow = other.id;$(13_10)$(13_10)alarm_set(alarm[1],120);"
hsp = 3;
vsp = -4;
grv = 0.1;
done = 0;

image_speed = 0;
image_index = 0;
shakescreen(3,60);
audio_play_sound(sHit,1000,false);
game_set_speed(30,gamespeed_fps);
with (oCamera) follow = other.id;

alarm_set(alarm[1],120);