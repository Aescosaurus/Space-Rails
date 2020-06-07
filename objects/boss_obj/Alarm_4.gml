if( ++cur_rotation >= rotation_count )
{
	cur_rotation = 0
	
	phase = 0
	alarm_set( 0,phase_0_dur )
}
else
{
	phase = 3
	
	alarm_set( 3,1.0 )
}