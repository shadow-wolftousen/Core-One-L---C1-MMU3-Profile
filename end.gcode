{if layer_z < max_print_height}G1 Z{z_offset+min(max_layer_z+1, max_print_height)} F720 ; Move print head up{endif}
M140 S0 ; turn off heatbed
M141 S0 ; disable chamber control
M107 ; turn off fan
M107 P3
M107 P5
G1 X242 Y211 F10200 ; park
{if layer_z < max_print_height}G1 Z{z_offset+min(max_layer_z+50, max_print_height)} F720 ; Move bed down{endif}
M702 ; unload the current filament
M104 S0 ; turn off temperature
G4 ; wait
M572 S0 ; reset PA
M84 X Y E ; disable motors
; max_layer_z = [max_layer_z]