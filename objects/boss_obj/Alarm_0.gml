if( cam_can_see() )
{
	phase = 1
	
	alarm_set( 1,phase_1_dur )
}
else alarm_set( 0,phase_0_dur )