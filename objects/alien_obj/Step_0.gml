if( !spawned_squad && cam_can_see() )
{
	for( var i = 0; i < squad_size - 1; ++i )
	{
		var enemy = instance_create_layer( x + ( i + 1 ) * spacing,y,"instances",alien_obj )
		enemy.spawned_squad = true
	}
	
	spawned_squad = true
}