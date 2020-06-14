accel = 10.0
decay = 0.88

x_vel = 0.0
y_vel = 0.0

// can_shoot = true
// refire_time = 0.2 * 60.0

edge_buffer_x = 5
edge_buffer_y = 5

cam = view_camera[0]

randomize()

wep1 = instance_create_layer( x,y,"instances",lightning_rod_obj )
wep2 = instance_create_layer( x,y,"instances",basic_beam_obj )