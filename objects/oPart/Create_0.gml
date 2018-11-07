/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 44445665
/// @DnDArgument : "code" "x = room_width/2;$(13_10)y = room_height/2;$(13_10)$(13_10)$(13_10)//Particle System$(13_10)part_sys = part_system_create();$(13_10)part_system_depth(part_sys,0);$(13_10)$(13_10)$(13_10)$(13_10)//Particle$(13_10)part = part_type_create();$(13_10)part_type_shape(part,pt_shape_disk);$(13_10)part_type_scale(part,1,1);$(13_10)part_type_size(part,0.5,0.7,-.005,0);$(13_10)part_type_color2(part,c_blue,c_white);$(13_10)part_type_alpha2(part,1,0.75);$(13_10)part_type_speed(part,0.1,0.5,0,0);$(13_10)part_type_direction(part,0,359,0,0);$(13_10)part_type_gravity(part,0.02,90);$(13_10)part_type_life(part,room_speed*2,room_speed*4);$(13_10)part_type_blend(part,1);$(13_10)$(13_10)$(13_10)//Particle Emitter$(13_10)part_emit = part_emitter_create(part_sys);$(13_10)part_emitter_region(part_sys,part_emit,x-40,x+40,y-40,y+40,ps_shape_ellipse,ps_distr_gaussian);$(13_10)part_emitter_stream(part_sys,part_emit,part,1)$(13_10)$(13_10)$(13_10)"
x = room_width/2;
y = room_height/2;


//Particle System
part_sys = part_system_create();
part_system_depth(part_sys,0);



//Particle
part = part_type_create();
part_type_shape(part,pt_shape_disk);
part_type_scale(part,1,1);
part_type_size(part,0.5,0.7,-.005,0);
part_type_color2(part,c_blue,c_white);
part_type_alpha2(part,1,0.75);
part_type_speed(part,0.1,0.5,0,0);
part_type_direction(part,0,359,0,0);
part_type_gravity(part,0.02,90);
part_type_life(part,room_speed*2,room_speed*4);
part_type_blend(part,1);


//Particle Emitter
part_emit = part_emitter_create(part_sys);
part_emitter_region(part_sys,part_emit,x-40,x+40,y-40,y+40,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_stream(part_sys,part_emit,part,1)