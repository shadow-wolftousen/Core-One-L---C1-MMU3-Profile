;BEFORE_LAYER_CHANGE
G92 E0.0
;[layer_z]
{if layer_z > 150}
M201 X{interpolate_table(layer_z, (0,6000), (150,6000), (200,4000), (331,2000))} Y{interpolate_table(layer_z, (0,6000), (150,6000), (200,4000), (331,2000))}
{endif}
