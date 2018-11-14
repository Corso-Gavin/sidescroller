/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3E4ADA0B
/// @DnDArgument : "code" "x = oPlayer.x - 8$(13_10)y = oPlayer.y$(13_10)$(13_10)//particle system$(13_10)particle_sys = part_system_create();$(13_10)part_system_depth(particle_sys,0);$(13_10)//rain particle$(13_10)particle = part_type_create();$(13_10)part_type_shape(particle,pt_shape_disk);$(13_10)part_type_scale(particle,1,1);$(13_10)part_type_size(particle,0.5,0.7,-.005,0)$(13_10)part_type_color2(particle,c_maroon,c_yellow);$(13_10)part_type_alpha2(particle,.1,0.5);$(13_10)part_type_speed(particle,0.1,0.5,0,0);$(13_10)part_type_direction(particle,0,359,0,0);$(13_10)part_type_gravity(particle,0.02,90);$(13_10)part_type_life(particle,300,470);$(13_10)part_type_blend(particle,1);$(13_10)$(13_10)//emitter$(13_10)particle_emit = part_emitter_create(particle_sys)$(13_10)part_emitter_region(particle_sys,particle_emit,x-40,x+40,y-40,y+40,ps_shape_ellipse,ps_distr_gaussian);$(13_10)part_emitter_stream(particle_sys,particle_emit,particle,5)"
x = oPlayer.x - 8
y = oPlayer.y

//particle system
particle_sys = part_system_create();
part_system_depth(particle_sys,0);
//rain particle
particle = part_type_create();
part_type_shape(particle,pt_shape_disk);
part_type_scale(particle,1,1);
part_type_size(particle,0.5,0.7,-.005,0)
part_type_color2(particle,c_maroon,c_yellow);
part_type_alpha2(particle,.1,0.5);
part_type_speed(particle,0.1,0.5,0,0);
part_type_direction(particle,0,359,0,0);
part_type_gravity(particle,0.02,90);
part_type_life(particle,300,470);
part_type_blend(particle,1);

//emitter
particle_emit = part_emitter_create(particle_sys)
part_emitter_region(particle_sys,particle_emit,x-40,x+40,y-40,y+40,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_stream(particle_sys,particle_emit,particle,5)