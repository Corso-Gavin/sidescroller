/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 448CEB1F
/// @DnDArgument : "code" "with (oGun) instance_destroy();$(13_10)instance_change(oPDead,true);$(13_10)$(13_10)direction = point_direction(other.x,other.y,x,y);$(13_10)hsp = lengthdir_x(6,direction);$(13_10)vsp = lengthdir_y(4,direction)-2;$(13_10)if (sign(hsp) != 0) image_xscale = sign(hsp);$(13_10)$(13_10)"
with (oGun) instance_destroy();
instance_change(oPDead,true);

direction = point_direction(other.x,other.y,x,y);
hsp = lengthdir_x(6,direction);
vsp = lengthdir_y(4,direction)-2;
if (sign(hsp) != 0) image_xscale = sign(hsp);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5210DF5C
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);