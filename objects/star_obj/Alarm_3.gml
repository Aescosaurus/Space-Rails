phase = 4

laser = instance_create_layer( x,y,"instances",enemy_laser_obj )
laser.image_angle = point_direction( x,y,spaceship_obj.x,spaceship_obj.y ) - 180.0

alarm_set( 4,phase_4_dur )