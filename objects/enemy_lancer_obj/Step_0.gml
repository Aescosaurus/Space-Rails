switch( phase )
{
case 0:
	particle_jet_at( 5,image_angle + 90.0 + 45.0,0.0,6,5 )
	particle_jet_at( 5,image_angle + 90.0 - 45.0,0.0,-6,5 )
	break
case 1:
	laser1.x = x + calc_x_ang( image_angle ) * 6 + calc_y_ang( image_angle - 90.0 ) * 5
	laser1.y = y + calc_y_ang( image_angle ) * 6 + calc_y_ang( image_angle - 90.0 ) * 5
	laser1.image_angle = image_angle + 45.0
	
	laser2.x = x + calc_x_ang( image_angle ) * 6 + calc_x_ang( image_angle - 90.0 ) * -5
	laser2.y = y + calc_y_ang( image_angle ) * 6 + calc_y_ang( image_angle - 90.0 ) * -5
	laser2.image_angle = image_angle - 45.0
	break
}