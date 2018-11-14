/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C4DA8A5
/// @DnDArgument : "code" "x = oPlayer.x$(13_10)y = oPlayer.y$(13_10)$(13_10)part_emitter_region(particle_sys,particle_emit,x-40,x+40,y-40,y+40,ps_shape_ellipse,ps_distr_gaussian);$(13_10)part_emitter_stream(particle_sys,particle_emit,particle,3)"
x = oPlayer.x
y = oPlayer.y

part_emitter_region(particle_sys,particle_emit,x-40,x+40,y-40,y+40,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_stream(particle_sys,particle_emit,particle,3)