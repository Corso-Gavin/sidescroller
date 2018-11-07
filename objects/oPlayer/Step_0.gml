/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C32973A
/// @DnDBreak : 1

/// @DnDArgument : "code" "// Get player input$(13_10)$(13_10)if (hascontrol)$(13_10){$(13_10)key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));$(13_10)key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));$(13_10)key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W")) || keyboard_check(vk_up);$(13_10)$(13_10)if (key_left) || (key_right) || (key_jump)$(13_10){$(13_10)	controller = 0;$(13_10)}$(13_10)}$(13_10)else$(13_10){$(13_10)	key_right = 0;$(13_10)	key_left = 0;$(13_10)	key_jump = 0;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2)$(13_10){$(13_10)	key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));$(13_10)	key_right = max(gamepad_axis_value(0,gp_axislh),0);$(13_10)	controller = 1;$(13_10)}$(13_10)$(13_10)//Calculate movement$(13_10)var move = key_right - key_left;$(13_10)$(13_10)hsp = move * walksp;$(13_10)$(13_10)vsp = vsp + grv;$(13_10)$(13_10)//jumping$(13_10)if (place_meeting(x,y+1,obj_wall)) and (key_jump)$(13_10){$(13_10)	vsp = -7$(13_10)	audio_play_sound(sJump,100,0)$(13_10)}	$(13_10)$(13_10)$(13_10)// Horizontal Collision$(13_10)if (place_meeting(x+hsp,y,obj_wall))$(13_10){$(13_10)	while (!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)	{$(13_10)		x = x +sign(hsp);$(13_10)	}	$(13_10)	hsp = 0;$(13_10)}	$(13_10)x = x + hsp;$(13_10)$(13_10)// Vertical Collision$(13_10)if (place_meeting(x,y+vsp,obj_wall))$(13_10){$(13_10)	while (!place_meeting(x,y+sign(vsp),obj_wall))$(13_10)	{$(13_10)		y = y +sign(vsp);$(13_10)	}	$(13_10)	vsp = 0;$(13_10)}	$(13_10)$(13_10)//Animation$(13_10)if (!place_meeting(x,y+1,obj_wall))$(13_10){$(13_10)	sprite_index = sPlayerA;$(13_10)	image_speed = 0;$(13_10)	if (sign(vsp) > 0) image_index = 1; else image_index = 0;$(13_10)}$(13_10)else$(13_10){$(13_10)	image_speed = 10;$(13_10)	if (hsp == 0)$(13_10)	{$(13_10)		sprite_index = sPlayer;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		sprite_index = sPlayerR;$(13_10)	}	$(13_10)}$(13_10)if (hsp != 0) image_xscale = sign(hsp);$(13_10)$(13_10)$(13_10)$(13_10)y = y + vsp;"
// Get player input

if (hascontrol)
{
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W")) || keyboard_check(vk_up);

if (key_left) || (key_right) || (key_jump)
{
	controller = 0;
}
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}





if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2)
{
	key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
	key_right = max(gamepad_axis_value(0,gp_axislh),0);
	controller = 1;
}

//Calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

//jumping
if (place_meeting(x,y+1,obj_wall)) and (key_jump)
{
	vsp = -7
	audio_play_sound(sJump,100,0)
}	


// Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x +sign(hsp);
	}	
	hsp = 0;
}	
x = x + hsp;

// Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y +sign(vsp);
	}	
	vsp = 0;
}	

//Animation
if (!place_meeting(x,y+1,obj_wall))
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 10;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
	}	
}
if (hsp != 0) image_xscale = sign(hsp);



y = y + vsp;