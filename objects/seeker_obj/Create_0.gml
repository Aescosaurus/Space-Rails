event_inherited()
damage = 2
speed = 1.5
lifetime = 5.0 * 60.0
alarm_set( 0,lifetime )
rotate_speed = 0.8

closest_check = 1.0
alarm_set( 1,closest_check )
closest = find_closest_enemy()