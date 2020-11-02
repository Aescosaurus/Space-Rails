explode_time = 4.5 * 60.0
final_explode_count = 20
explosion_interval = 0.1 * 60.0

explode_wait = explode_time + 2.0 * 60.0

zoom_time = false
zoom_speed = 0.2
min_zoom_x = room_width / 30
min_zoom_y = room_height / 30

alarm_set( 0,explosion_interval )
alarm_set( 1,explode_time )
alarm_set( 2,explode_wait )