event_inherited()

var on_screen = cam_can_see()

if( !spawned_squad && on_screen )
{
	spawned_squad = true
	speed = move_speed
	
	for( var i = 0; i < squad_size - 1; ++i )
	{
		var enemy = instance_copy( false )
		
		enemy.x -= cos( degtorad( direction ) ) * ( ( i + 1 ) * x_spacing )
		enemy.y += sin( degtorad( direction ) ) * ( ( i + 1 ) * y_spacing )
	}
}