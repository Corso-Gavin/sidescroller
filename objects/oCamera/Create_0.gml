/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3D26AEF2
/// @DnDArgument : "code" "/// @desc set up camera$(13_10)cam = view_camera[0];$(13_10)follow = oPlayer;$(13_10)view_w_half = camera_get_view_width(cam) * 0.5;$(13_10)view_h_half = camera_get_view_height(cam) * 0.5;$(13_10)xTo = xstart;$(13_10)yTo= ystart;$(13_10)$(13_10)$(13_10)shake_length = 0;$(13_10)shake_magnitude = 0;$(13_10)shake_remain = 0;$(13_10)buff = 32;$(13_10)$(13_10)"
/// @desc set up camera
cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo= ystart;


shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;