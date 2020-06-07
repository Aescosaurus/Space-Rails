phase = 3

for( var i = 0; i < array_length_1d( lasers ); ++i )
{
	instance_destroy( lasers[i] )
}

alarm_set( 3,shotgun_refire )