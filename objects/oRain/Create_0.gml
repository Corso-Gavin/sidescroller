/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 210898E3
/// @DnDArgument : "code" "//rain system$(13_10)partRain_sys = part_system_create();$(13_10)$(13_10)//rain particle$(13_10)partRain = part_type_create();$(13_10)part_type_shape(partRain,pt_shape_line);$(13_10)part_type_size(partRain,0.2,0.3,0,0);$(13_10)part_type_color2(partRain,c_teal, c_white);$(13_10)part_type_alpha2(partRain,.5,.1);$(13_10)part_type_gravity(partRain,0.1,290);$(13_10)part_type_speed(partRain,0.5,0.5,0,0);$(13_10)part_type_direction(partRain,250,330,0,1);$(13_10)part_type_orientation(partRain,290,290,0,0,0);$(13_10)part_type_life(partRain,140,200);$(13_10)$(13_10)$(13_10)//puddle particle$(13_10)partPuddle = part_type_create();$(13_10)part_type_shape(partPuddle,pt_shape_circle);$(13_10)part_type_size(partPuddle,0.5,0.8,.01,0);$(13_10)part_type_scale(partPuddle,.5,.1);$(13_10)part_type_color1(partPuddle,c_silver);$(13_10)part_type_alpha2(partPuddle,.4,0);$(13_10)part_type_speed(partPuddle,0,0,0,0);$(13_10)part_type_direction(partPuddle,0,0,0,0);$(13_10)part_type_gravity(partPuddle,0,270);$(13_10)part_type_life(partPuddle,50,60);$(13_10)$(13_10)//set sequence$(13_10)part_type_death(partRain,1,partPuddle);$(13_10)$(13_10)$(13_10)//Create Emitter$(13_10)partRain_emit = part_emitter_create(partRain_sys);"
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