/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31993CC4
/// @DnDArgument : "code" "//update camera$(13_10)$(13_10)//update destination$(13_10)if (instance_exists(follow))$(13_10){	$(13_10)	xTo = follow.x;$(13_10)	yTo = follow.y;$(13_10)}	$(13_10)$(13_10)//update position$(13_10)x += (xTo -x) / 25;$(13_10)y += (yTo -y) / 25;$(13_10)$(13_10)$(13_10)x = clamp(x,view_w_half,room_width-view_w_half);$(13_10)y = clamp(y,view_h_half,room_height-view_h_half);$(13_10)$(13_10)//update camera view$(13_10)camera_set_view_pos(cam,x-view_w_half,y-view_h_half);"
//update camera

//update destination
if (instance_exists(follow))
{	
	xTo = follow.x;
	yTo = follow.y;
}	

//update position
x += (xTo -x) / 25;
y += (yTo -y) / 25;


x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);