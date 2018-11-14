/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5D9C2B2F
/// @DnDArgument : "code" "hsp = 0;$(13_10)vsp = 0;$(13_10)grv = 0.3;$(13_10)done = 0;$(13_10)hitfrom = 0;$(13_10)$(13_10)image_speed = 0$(13_10)audio_play_sound(sHit,0,0)$(13_10)$(13_10)with oMusic$(13_10){$(13_10)if music != 1$(13_10){$(13_10)	music = 1$(13_10)}$(13_10)}$(13_10)$(13_10)if !instance_exists(oParticle)$(13_10){$(13_10)	instance_create_layer(x,y,"player",oParticle);$(13_10)}"
hsp = 0;
vsp = 0;
grv = 0.3;
done = 0;
hitfrom = 0;

image_speed = 0
audio_play_sound(sHit,0,0)

with oMusic
{
if music != 1
{
	music = 1
}
}

if !instance_exists(oParticle)
{
	instance_create_layer(x,y,"player",oParticle);
}