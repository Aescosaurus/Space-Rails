if( instance_exists( beam ) )
{
	beam.x = x + calc_x_ang( image_angle ) * 8
	beam.y = y + calc_y_ang( image_angle ) * 8
	beam.image_angle = point_direction( x,y,mouse_x,mouse_y ) - 90.0
}