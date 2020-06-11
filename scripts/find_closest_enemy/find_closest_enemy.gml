var closest = noone
var dist = 999999.0
for( var i = 0; i < instance_number( enemy_ship_base ); ++i )
{
	var e = instance_find( enemy_ship_base,i )
	if( cam_can_see_inst( e.x,e.y,e.sprite_width,e.sprite_height ) )
	{
		var new_dist = get_len_sq( e.x - x,e.y - y )
		if( new_dist < dist )
		{
			dist = new_dist
			closest = e
		}
	}
}

return( closest )