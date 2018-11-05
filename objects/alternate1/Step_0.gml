/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C32973A
/// @DnDArgument : "code" "// Get player input$(13_10)key_left = keyboard_check(vk_left);$(13_10)key_right = keyboard_check(vk_right);$(13_10)key_jump = keyboard_check_pressed(vk_space);$(13_10)$(13_10)//Calculate movement$(13_10)var move = key_right - key_left;$(13_10)$(13_10)hsp = move * walksp;$(13_10)$(13_10)vsp = vsp + grv;$(13_10)$(13_10)if (place_meeting(x,y+1,obj_wall)) and (key_jump)$(13_10){$(13_10)	vsp = -7$(13_10)}	$(13_10)$(13_10)$(13_10)// Horizontal Collision$(13_10)if (place_meeting(x+hsp,y,obj_wall))$(13_10){$(13_10)	while (!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)	{$(13_10)		x = x +sign(hsp);$(13_10)	}	$(13_10)	hsp = 0;$(13_10)}	$(13_10)x = x + hsp;$(13_10)$(13_10)// Vertical Collision$(13_10)if (place_meeting(x,y+vsp,obj_wall))$(13_10){$(13_10)	while (!place_meeting(x,y+sign(vsp),obj_wall))$(13_10)	{$(13_10)		y = y +sign(vsp);$(13_10)	}	$(13_10)	vsp = 0;$(13_10)}	$(13_10)y = y + vsp;"
// Get player input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_wall)) and (key_jump)
{
	vsp = -7
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
y = y + vsp;