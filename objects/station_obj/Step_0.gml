camera_set_view_pos( view_camera[0],x - cam_width / 2,y - cam_height / 2 )

var dt = get_delta_time()
var target_y = ground_obj.y - ground_obj.sprite_height / 2 - sprite_height / 5

if( y < target_y - grav * dt )
{
	grav += grav_accel * dt
	y += grav * dt

	if( random_range( 0,100 ) < explode_chance )
	{
		particle_spawn_explosion(
			x + random_range( -sprite_width / 2,sprite_width / 2 ),
			y + random_range( -sprite_height / 2,sprite_height / 2 ),
			random_range( 9,15 ) )
	}
}
else
{
	y = target_y
	
	if( alarm[0] < 0.0 ) alarm_set( 0,time_explode )
}

particle_spawn_jet( x + 35,y + 13,13,15,90.0,0.0,2.3 )
particle_spawn_jet( x + 10,y - 5,18,15,90.0,0.0,2.3 )
particle_spawn_jet( x - 37,y + 20,16,15,90.0,0.0,2.3 )