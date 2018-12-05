/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C1A2DE4
/// @DnDArgument : "code" "if hp <= 0$(13_10){$(13_10)	shakescreen(6,25)$(13_10)	with instance_create_layer(x,y,layer,oDead)$(13_10)		{$(13_10)			direction = other.hitfrom;$(13_10)			hsp = lengthdir_x(3,direction);$(13_10)			vsp = lengthdir_y(3,direction)-4;$(13_10)			if (sign(hsp) != 0) image_xscale = sign(hsp) * other.size;$(13_10)			image_yscale = other.size;$(13_10)$(13_10)		}$(13_10)	with oSystem$(13_10)	{$(13_10)		if walksproot < 10$(13_10)		{$(13_10)		walksproot += 1;$(13_10)		}$(13_10)		if jumproot > -20$(13_10)		{$(13_10)			jumproot -= 1;$(13_10)		}$(13_10)		killcount += 1;$(13_10)	}$(13_10)	instance_destroy();	$(13_10)}	"
if hp <= 0
{
	shakescreen(6,25)
	with instance_create_layer(x,y,layer,oDead)
		{
			direction = other.hitfrom;
			hsp = lengthdir_x(3,direction);
			vsp = lengthdir_y(3,direction)-4;
			if (sign(hsp) != 0) image_xscale = sign(hsp) * other.size;
			image_yscale = other.size;

		}
	with oSystem
	{
		if walksproot < 10
		{
		walksproot += 1;
		}
		if jumproot > -20
		{
			jumproot -= 1;
		}
		killcount += 1;
	}
	instance_destroy();	
}