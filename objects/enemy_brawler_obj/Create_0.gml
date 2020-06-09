event_inherited()
hp = 5
squad_size = 2

target_buffer = sprite_width * 3
target_x = -1
target_y = -1

move_speed = 0.2
slow_stop_dist = 20.0
vel_decay = 0.98
stopped = false
x_vel = 0.0
y_vel = 0.0

refire = 1.5 * 60.0
bullet_speed = 0.8
alarm_set( 0,refire )

bullet_x_offset = 8.0
bullet_y_offset = 8.0