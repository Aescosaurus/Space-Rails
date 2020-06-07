if( instance_exists( lasers[0] ) )
{
	for( var i = 0; i < array_length_1d( lasers ); ++i )
	{
		instance_destroy( lasers[i] )
	}
}