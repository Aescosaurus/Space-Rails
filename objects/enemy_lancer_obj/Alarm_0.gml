if( cam_can_see() )
{
	phase = 1
	
	laser1 = instance_create_layer( x,y,"instances",enemy_laser_obj )
	laser2 = instance_create_layer( x,y,"instances",enemy_laser_obj )
	
	alarm_set( 1,laser_dur )
}
else
{
	alarm_set( 0,laser_warn_dur )
}