event_inherited()
damage = 0.04
speed = 3.5
lifetime = 0.45 * 60.0

alarm_set( 0,lifetime )

var scale = random_range( 1.0,3.5 )
image_xscale = scale
image_yscale = scale

image_angle = random_range( 0.0,360.0 )