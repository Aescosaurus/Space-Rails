if( !spawned_squad && cam_can_see() )
{
	spawned_squad = true
	speed = move_speed
	
	for( var i = 0; i < squad_size - 1; ++i )
	{
		// var enemy = instance_create_layer( x + ( i + 1 ) * spacing,y,"instances",alien_obj )
		var enemy = instance_copy( false )
		// enemy.x = x + cos( degtorad( direction ) ) * ( ( i + 1 ) * x_spacing )
		// enemy.y = y + sin( degtorad( direction ) ) * ( ( i + 1 ) * y_spacing )
		enemy.x -= cos( degtorad( direction ) ) * ( ( i + 1 ) * x_spacing )
		enemy.y += sin( degtorad( direction ) ) * ( ( i + 1 ) * y_spacing )
		enemy.image_angle = image_angle
	}
}