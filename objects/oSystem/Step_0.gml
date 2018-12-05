/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 60B9BB8A
/// @DnDArgument : "code" "if (mode != TRANS_MODE.OFF)$(13_10){$(13_10)	if (mode ==TRANS_MODE.INTRO)$(13_10)	{$(13_10)		percent = max(0,percent - max((percent/10),0.005));$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		percent = min(1,percent + max(((1 - percent)/10),0.005));$(13_10)	}$(13_10)	$(13_10)	if (percent ==1) || (percent ==0)$(13_10)	{$(13_10)		switch (mode)$(13_10)		{$(13_10)			case TRANS_MODE.INTRO:$(13_10)			{$(13_10)				mode = TRANS_MODE.OFF;$(13_10)				break;$(13_10)			}$(13_10)			case TRANS_MODE.NEXT:$(13_10)			{$(13_10)				mode = TRANS_MODE.INTRO;$(13_10)				room_goto_next();$(13_10)				break;$(13_10)			}$(13_10)			case TRANS_MODE.GOTO:$(13_10)			{$(13_10)				mode = TRANS_MODE.INTRO;$(13_10)				room_goto(target);$(13_10)				break;$(13_10)			}$(13_10)			case TRANS_MODE.RESTART:$(13_10)			{$(13_10)				game_restart();$(13_10)				break;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)//Update Emitter$(13_10)part_emitter_region(partRain_sys,partRain_emit,-400,2100,-200,0,ps_shape_line,ps_distr_linear);$(13_10)part_emitter_burst(partRain_sys,partRain_emit,partRain,30);$(13_10)$(13_10)$(13_10)//Update Aura$(13_10)$(13_10)if alpha3 != 0$(13_10){$(13_10)alpha3 -= 0.0002$(13_10)}$(13_10)if alpha4 != 0$(13_10){$(13_10)	alpha4 -= 0.0002$(13_10)}$(13_10)part_type_alpha2(particle,alpha3,alpha4);$(13_10)if instance_exists(oPlayer)$(13_10)	{$(13_10)	if isdead = true$(13_10)	{$(13_10)	x = oPlayer.x$(13_10)	y = oPlayer.y$(13_10)	part_emitter_region(particle_sys,particle_emit,x-40,x+40,y-40,y+40,ps_shape_ellipse,ps_distr_gaussian);$(13_10)	part_emitter_stream(particle_sys,particle_emit,particle,3)$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)	x = -10000$(13_10)	y = -10000$(13_10)	part_emitter_region(particle_sys,particle_emit,x-40,x+40,y-40,y+40,ps_shape_ellipse,ps_distr_gaussian);$(13_10)	part_emitter_stream(particle_sys,particle_emit,particle,3)$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)//Update blue aura$(13_10)if alpha1 != .1$(13_10){$(13_10)alpha1 += 0.00001$(13_10)}$(13_10)if alpha2 != 0.5$(13_10){$(13_10)	alpha2 += 0.00001$(13_10)}$(13_10)part_type_alpha2(particle2,alpha1,alpha2);$(13_10)if instance_exists(oPlayer)$(13_10)	{$(13_10)	if isdead = false or alpha3 = 0 and alpha4 = 0$(13_10)	{$(13_10)	x = oPlayer.x$(13_10)	y = oPlayer.y$(13_10)	part_emitter_region(particle2_sys,particle2_emit,x-40,x+40,y-40,y+40,ps_shape_ellipse,ps_distr_gaussian);$(13_10)	part_emitter_stream(particle2_sys,particle2_emit,particle2,3)$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)	x = -10000$(13_10)	y = -10000$(13_10)	part_emitter_region(particle2_sys,particle2_emit,x-40,x+40,y-40,y+40,ps_shape_ellipse,ps_distr_gaussian);$(13_10)	part_emitter_stream(particle2_sys,particle2_emit,particle2,3)$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)//Music Step$(13_10)$(13_10)if music = 1$(13_10){$(13_10)	if music_name != 1$(13_10)	{$(13_10)		audio_stop_all();$(13_10)		audio_play_sound(mMegalovania,100,1);$(13_10)		music_name = 1;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)if music = 2$(13_10){$(13_10)	if music_name != 2$(13_10)	{$(13_10)		audio_stop_all();$(13_10)		audio_play_sound(mRainOrEnding,1000,1);$(13_10)		music_name = 2;$(13_10)	}$(13_10)}$(13_10)$(13_10)if music = 3$(13_10){$(13_10)	if music_name != 3$(13_10)	{$(13_10)		audio_stop_all();$(13_10)		audio_play_sound(mMenu,1000,1);$(13_10)		music_name = 3;$(13_10)	}$(13_10)}$(13_10)$(13_10)if alpha3 > .3$(13_10){$(13_10)	if music_name != 2$(13_10)	{$(13_10)		audio_stop_all();$(13_10)		audio_play_sound(mRainOrEnding,1000,1)$(13_10)		music = 2$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if alpha3 > 0.01$(13_10){$(13_10)with oPlayer$(13_10){$(13_10)	image_blend = c_black$(13_10)	}$(13_10)}$(13_10)else$(13_10){$(13_10)	with oPlayer$(13_10)	{$(13_10)		image_blend = -1$(13_10)	}$(13_10)}$(13_10)//rage speed$(13_10)$(13_10)if walksproot > 5$(13_10){$(13_10)	walksproot -= 0.005;$(13_10)}$(13_10)if jumproot <= -9$(13_10){$(13_10)	jumproot += 0.005;$(13_10)}$(13_10)$(13_10)$(13_10)with oPlayer$(13_10){	$(13_10)	walksp = other.walksproot;	$(13_10)	jumpheight = other.jumproot;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
if (mode != TRANS_MODE.OFF)
{
	if (mode ==TRANS_MODE.INTRO)
	{
		percent = max(0,percent - max((percent/10),0.005));
	}
	else
	{
		percent = min(1,percent + max(((1 - percent)/10),0.005));
	}
	
	if (percent ==1) || (percent ==0)
	{
		switch (mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
		}
	}
}





//Update Emitter
part_emitter_region(partRain_sys,partRain_emit,-400,2100,-200,0,ps_shape_line,ps_distr_linear);
part_emitter_burst(partRain_sys,partRain_emit,partRain,30);


//Update Aura

if alpha3 != 0
{
alpha3 -= 0.0002
}
if alpha4 != 0
{
	alpha4 -= 0.0002
}
part_type_alpha2(particle,alpha3,alpha4);
if instance_exists(oPlayer)
	{
	if isdead = true
	{
	x = oPlayer.x
	y = oPlayer.y
	part_emitter_region(particle_sys,particle_emit,x-40,x+40,y-40,y+40,ps_shape_ellipse,ps_distr_gaussian);
	part_emitter_stream(particle_sys,particle_emit,particle,3)
	}
	else
	{
	x = -10000
	y = -10000
	part_emitter_region(particle_sys,particle_emit,x-40,x+40,y-40,y+40,ps_shape_ellipse,ps_distr_gaussian);
	part_emitter_stream(particle_sys,particle_emit,particle,3)
	}
}


//Update blue aura
if alpha1 != .1
{
alpha1 += 0.00001
}
if alpha2 != 0.5
{
	alpha2 += 0.00001
}
part_type_alpha2(particle2,alpha1,alpha2);
if instance_exists(oPlayer)
	{
	if isdead = false or alpha3 = 0 and alpha4 = 0
	{
	x = oPlayer.x
	y = oPlayer.y
	part_emitter_region(particle2_sys,particle2_emit,x-40,x+40,y-40,y+40,ps_shape_ellipse,ps_distr_gaussian);
	part_emitter_stream(particle2_sys,particle2_emit,particle2,3)
	}
	else
	{
	x = -10000
	y = -10000
	part_emitter_region(particle2_sys,particle2_emit,x-40,x+40,y-40,y+40,ps_shape_ellipse,ps_distr_gaussian);
	part_emitter_stream(particle2_sys,particle2_emit,particle2,3)
	}
}




//Music Step

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
		audio_play_sound(mRainOrEnding,1000,1);
		music_name = 2;
	}
}

if music = 3
{
	if music_name != 3
	{
		audio_stop_all();
		audio_play_sound(mMenu,1000,1);
		music_name = 3;
	}
}

if alpha3 > .3
{
	if music_name != 2
	{
		audio_stop_all();
		audio_play_sound(mRainOrEnding,1000,1)
		music = 2
	}
}







if alpha3 > 0.01
{
with oPlayer
{
	image_blend = c_black
	}
}
else
{
	with oPlayer
	{
		image_blend = -1
	}
}
//rage speed

if walksproot > 5
{
	walksproot -= 0.005;
}
if jumproot <= -9
{
	jumproot += 0.005;
}


with oPlayer
{	
	walksp = other.walksproot;	
	jumpheight = other.jumproot;
}