var dt = get_delta_time()

x = lerp( x,station_boss_obj.x + target_x + random_range( -target_dev,target_dev ),move_percent * dt )
y = lerp( y,station_boss_obj.y + target_y + random_range( -target_dev,target_dev ),move_percent * dt )

switch( phase )
{
case 1: // orbit
	orbit_angle += orbit_speed * dt
	target_x = cos( degtorad( orbit_angle ) ) * orbit_dist * type
	target_y = sin( degtorad( orbit_angle ) ) * orbit_dist * type
	break
case 2: // orbit and bullets
	orbit_angle -= orbit_speed * 1.5 * dt
	target_x = cos( degtorad( orbit_angle ) ) * orbit_dist * type
	target_y = sin( degtorad( orbit_angle ) ) * orbit_dist * type
	image_angle -= rot_speed * dt
	break
case 3: // laser warning
	particle_spawn_jet( x,y,10.0,2.0,
		point_direction( x,y,spaceship_obj.x,spaceship_obj.y ),
		0.0,0.8 )
	break
case 4: // laser actual
	image_angle += rot_speed * 2.0 * dt
	laser.x = x
	laser.y = y
	// laser.image_angle = lerp( laser.image_angle,
	// 	point_direction( x,y,spaceship_obj.x,spaceship_obj.y ) - 90.0 + sin( image_angle / 200.0 ) * 40.0,
	// 	laser_rot * dt )
	laser.image_angle += laser_rot * dt
	break
case 5: // move towards player while shooting
	target_x = lerp( 0,spaceship_obj.x - station_boss_obj.x,0.2 )
	target_y = lerp( 0,spaceship_obj.y - station_boss_obj.y,0.2 )
	break
}