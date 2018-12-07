/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FCB31BA
/// @DnDArgument : "code" "///@desc Establish Particles, Music and Transition$(13_10)alpha1 = 0;$(13_10)alpha2 = 0;$(13_10)alpha3 = 0;$(13_10)alpha4 = .2;$(13_10)alarm_set(alarm[0], 60);$(13_10)isdead = 0;$(13_10)w = display_get_gui_width();$(13_10)h = display_get_gui_height();$(13_10)h_half = h * 0.5;$(13_10)enum TRANS_MODE$(13_10){$(13_10)	OFF,$(13_10)	NEXT,$(13_10)	GOTO,$(13_10)	RESTART,$(13_10)	INTRO$(13_10)}$(13_10)mode = TRANS_MODE.INTRO;$(13_10)percent = 1;$(13_10)target = room;$(13_10)$(13_10)$(13_10)$(13_10)//rain system$(13_10)partRain_sys = part_system_create();$(13_10)$(13_10)//rain particle$(13_10)partRain = part_type_create();$(13_10)part_type_shape(partRain,pt_shape_line);$(13_10)part_type_size(partRain,0.2,0.3,0,0);$(13_10)part_type_color2(partRain,c_teal, c_white);$(13_10)part_type_alpha2(partRain,.5,.1);$(13_10)part_type_gravity(partRain,0.1,290);$(13_10)part_type_speed(partRain,0.5,0.5,0,0);$(13_10)part_type_direction(partRain,250,330,0,1);$(13_10)part_type_orientation(partRain,290,290,0,0,0);$(13_10)part_type_life(partRain,140,200);$(13_10)$(13_10)$(13_10)//puddle particle$(13_10)partPuddle = part_type_create();$(13_10)part_type_shape(partPuddle,pt_shape_circle);$(13_10)part_type_size(partPuddle,0.5,0.8,.01,0);$(13_10)part_type_scale(partPuddle,.5,.1);$(13_10)part_type_color1(partPuddle,c_silver);$(13_10)part_type_alpha2(partPuddle,.4,0);$(13_10)part_type_speed(partPuddle,0,0,0,0);$(13_10)part_type_direction(partPuddle,0,0,0,0);$(13_10)part_type_gravity(partPuddle,0,270);$(13_10)part_type_life(partPuddle,50,60);$(13_10)$(13_10)//set sequence$(13_10)part_type_death(partRain,1,partPuddle);$(13_10)$(13_10)$(13_10)//Create Emitter$(13_10)partRain_emit = part_emitter_create(partRain_sys);$(13_10)$(13_10)$(13_10)$(13_10)//OTHER PARTICLE$(13_10)$(13_10)$(13_10)$(13_10)//particle system$(13_10)particle_sys = part_system_create();$(13_10)part_system_depth(particle_sys,0);$(13_10)//particle$(13_10)particle = part_type_create();$(13_10)part_type_shape(particle,pt_shape_disk);$(13_10)part_type_scale(particle,1,1);$(13_10)part_type_size(particle,0.5,0.7,-.005,0)$(13_10)part_type_color2(particle,c_maroon,c_yellow);$(13_10)part_type_alpha2(particle,.05,0.2);$(13_10)part_type_speed(particle,0.1,0.5,0,1);$(13_10)part_type_direction(particle,0,359,0,0);$(13_10)part_type_gravity(particle,0.02,90);$(13_10)part_type_life(particle,300,320);$(13_10)part_type_blend(particle,1);$(13_10)$(13_10)//emitter$(13_10)particle_emit = part_emitter_create(particle_sys);$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)//particle system$(13_10)particle2_sys = part_system_create();$(13_10)part_system_depth(particle2_sys,0);$(13_10)//particle$(13_10)particle2 = part_type_create();$(13_10)part_type_shape(particle2,pt_shape_disk);$(13_10)part_type_scale(particle2,1,1);$(13_10)part_type_size(particle2,0.5,0.7,-.005,0)$(13_10)part_type_color2(particle2,c_blue,c_white);$(13_10)part_type_alpha2(particle2,.1,0.5);$(13_10)part_type_speed(particle2,0.1,0.5,0,1);$(13_10)part_type_direction(particle2,0,359,0,0);$(13_10)part_type_gravity(particle2,0.02,90);$(13_10)part_type_life(particle2,300,470);$(13_10)part_type_blend(particle2,1);$(13_10)$(13_10)//emitter$(13_10)particle2_emit = part_emitter_create(particle2_sys);$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)//Music Create$(13_10)$(13_10)if room = rMenu$(13_10){$(13_10)	music = 3;$(13_10)}$(13_10)if room = rOne$(13_10){$(13_10)	music = 2;$(13_10)}$(13_10)if room = rTwo$(13_10){$(13_10)	music = 2;$(13_10)}$(13_10)if room = rLong$(13_10){$(13_10)	music = 2;$(13_10)}$(13_10)$(13_10)if music = 0$(13_10){$(13_10)	audio_stop_all();$(13_10)	audio_play_sound(mMenu,100,1);$(13_10)}$(13_10)$(13_10)"
///@desc Establish Particles, Music and Transition
alpha1 = 0;
alpha2 = 0;
alpha3 = 0;
alpha4 = .2;
alarm_set(alarm[0], 60);
isdead = 0;
w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;



//rain system
partRain_sys = part_system_create();

//rain particle
partRain = part_type_create();
part_type_shape(partRain,pt_shape_line);
part_type_size(partRain,0.2,0.3,0,0);
part_type_color2(partRain,c_teal, c_white);
part_type_alpha2(partRain,.5,.1);
part_type_gravity(partRain,0.1,290);
part_type_speed(partRain,0.5,0.5,0,0);
part_type_direction(partRain,250,330,0,1);
part_type_orientation(partRain,290,290,0,0,0);
part_type_life(partRain,140,200);


//puddle particle
partPuddle = part_type_create();
part_type_shape(partPuddle,pt_shape_circle);
part_type_size(partPuddle,0.5,0.8,.01,0);
part_type_scale(partPuddle,.5,.1);
part_type_color1(partPuddle,c_silver);
part_type_alpha2(partPuddle,.4,0);
part_type_speed(partPuddle,0,0,0,0);
part_type_direction(partPuddle,0,0,0,0);
part_type_gravity(partPuddle,0,270);
part_type_life(partPuddle,50,60);

//set sequence
part_type_death(partRain,1,partPuddle);


//Create Emitter
partRain_emit = part_emitter_create(partRain_sys);



//OTHER PARTICLE



//particle system
particle_sys = part_system_create();
part_system_depth(particle_sys,0);
//particle
particle = part_type_create();
part_type_shape(particle,pt_shape_disk);
part_type_scale(particle,1,1);
part_type_size(particle,0.5,0.7,-.005,0)
part_type_color2(particle,c_maroon,c_yellow);
part_type_alpha2(particle,.05,0.2);
part_type_speed(particle,0.1,0.5,0,1);
part_type_direction(particle,0,359,0,0);
part_type_gravity(particle,0.02,90);
part_type_life(particle,300,320);
part_type_blend(particle,1);

//emitter
particle_emit = part_emitter_create(particle_sys);




//particle system
particle2_sys = part_system_create();
part_system_depth(particle2_sys,0);
//particle
particle2 = part_type_create();
part_type_shape(particle2,pt_shape_disk);
part_type_scale(particle2,1,1);
part_type_size(particle2,0.5,0.7,-.005,0)
part_type_color2(particle2,c_blue,c_white);
part_type_alpha2(particle2,.1,0.5);
part_type_speed(particle2,0.1,0.5,0,1);
part_type_direction(particle2,0,359,0,0);
part_type_gravity(particle2,0.02,90);
part_type_life(particle2,300,470);
part_type_blend(particle2,1);

//emitter
particle2_emit = part_emitter_create(particle2_sys);






//Music Create

if room = rMenu
{
	music = 3;
}
if room = rOne
{
	music = 2;
}
if room = rTwo
{
	music = 2;
}
if room = rLong
{
	music = 2;
}

if music = 0
{
	audio_stop_all();
	audio_play_sound(mMenu,100,1);
}