if( can_fire )
{
	var target_enemy = find_closest_enemy()
	var target_ang = image_angle
	if( instance_exists( target_enemy ) )
	{
		target_ang = point_direction( x,y,target_enemy.x,target_enemy.y ) - 90.0
		if( abs( angle_difference( target_ang,image_angle ) ) > angle_tolerance )
		{
			target_ang = image_angle
		}
	}
	
	for( var i = 0; i < bolts; ++i )
	{
		var lightning = array_create( range )
		for( var j = 0; j < range; ++j )
		{
			lightning[j] = instance_create_layer( x,y,"instances",lightning_obj )
			lightning[j].image_angle = target_ang
			lightning[j].image_angle += random_range( -lightning_dev,lightning_dev )
			
			if( j > 0 )
			{
				var lastL = lightning[j - 1]
				lightning[j].x = lastL.x + cos( degtorad( lastL.image_angle + 90.0 ) ) * lastL.sprite_height
				lightning[j].y = lastL.y - sin( degtorad( lastL.image_angle + 90.0 ) ) * lastL.sprite_height
			}
		}
	}
	
	can_fire = false
	alarm_set( 0,refire_time )
}