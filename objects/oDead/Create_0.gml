/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5D9C2B2F
/// @DnDArgument : "code" "killcount = 0$(13_10)hsp = 0;$(13_10)vsp = 0;$(13_10)grv = 0.3;$(13_10)done = 0;$(13_10)hitfrom = 0;$(13_10)$(13_10)image_speed = 0$(13_10)audio_play_sound(sHit,0,0)$(13_10)$(13_10)$(13_10)$(13_10)with oPlayer$(13_10){$(13_10)	killcount++$(13_10)}$(13_10)with oSystem$(13_10){$(13_10)	isdead = true;$(13_10)	if music != 1$(13_10)	{$(13_10)		music = 1$(13_10)	}$(13_10)}$(13_10)$(13_10)with oGun$(13_10){$(13_10)	aura = aura + .5;$(13_10)}$(13_10)with oSystem$(13_10){$(13_10)	killcount = killcount + 1;$(13_10)	if alpha3 != 0.1$(13_10)	{$(13_10)		alpha3 += 0.01;$(13_10)	}$(13_10)	if alpha4 != 0.5$(13_10)	{$(13_10)		alpha4 += 0.02;$(13_10)	}$(13_10)}$(13_10)$(13_10)//DARKNESS$(13_10)$(13_10)with sPlayer$(13_10){$(13_10)	killcount = killcount++$(13_10)	if image_alpha > 0 image_alpha -= 0.0;$(13_10)	$(13_10)}$(13_10)$(13_10)// Enemy Growth$(13_10)$(13_10)with oEnemy$(13_10){$(13_10)	var xx,yy;$(13_10)	xx = 48 * image_xscale;$(13_10)	yy = 48 * image_yscale;$(13_10)	killcount++$(13_10)	if (!place_meeting(x,y-(0.278208 * killcount + 4),obj_wall))$(13_10)	{$(13_10)		size = size + 0.1;$(13_10)		y -= 0.278208 * killcount + 2.704;$(13_10)	}$(13_10)}$(13_10)"
killcount = 0
hsp = 0;
vsp = 0;
grv = 0.3;
done = 0;
hitfrom = 0;

image_speed = 0
audio_play_sound(sHit,0,0)



with oPlayer
{
	killcount++
}
with oSystem
{
	isdead = true;
	if music != 1
	{
		music = 1
	}
}

with oGun
{
	aura = aura + .5;
}
with oSystem
{
	killcount = killcount + 1;
	if alpha3 != 0.1
	{
		alpha3 += 0.01;
	}
	if alpha4 != 0.5
	{
		alpha4 += 0.02;
	}
}

//DARKNESS

with sPlayer
{
	killcount = killcount++
	if image_alpha > 0 image_alpha -= 0.0;
	
}

// Enemy Growth

with oEnemy
{
	var xx,yy;
	xx = 48 * image_xscale;
	yy = 48 * image_yscale;
	killcount++
	if (!place_meeting(x,y-(0.278208 * killcount + 4),obj_wall))
	{
		size = size + 0.1;
		y -= 0.278208 * killcount + 2.704;
	}
}