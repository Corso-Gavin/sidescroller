/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31993CC4
/// @DnDArgument : "code" "//update camera$(13_10)$(13_10)//update destination$(13_10)if (instance_exists(follow))$(13_10){	$(13_10)	xTo = follow.x;$(13_10)	yTo = follow.y;$(13_10)}	$(13_10)$(13_10)//update position$(13_10)x += (xTo -x) / 25;$(13_10)y += (yTo -y) / 25;$(13_10)$(13_10)$(13_10)x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);$(13_10)y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);$(13_10)$(13_10)//screenshake$(13_10)x += random_range(-shake_remain,shake_remain);$(13_10)y += random_range(-shake_remain,shake_remain);$(13_10)shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));$(13_10)$(13_10)//update camera view$(13_10)camera_set_view_pos(cam,x-view_w_half,y-view_h_half);$(13_10)$(13_10)$(13_10)if (layer_get_id("mountains"))$(13_10){$(13_10)	layer_x("mountains",x/2);$(13_10)}$(13_10)$(13_10)if (layer_get_id("trees"))$(13_10){$(13_10)	layer_x("trees",x/8);$(13_10)}$(13_10)$(13_10)$(13_10)"
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


x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

//screenshake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);


if (layer_get_id("mountains"))
{
	layer_x("mountains",x/2);
}

if (layer_get_id("trees"))
{
	layer_x("trees",x/8);
}