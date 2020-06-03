var dt = get_delta_time()

image_angle = point_direction( x,y,mouse_x,mouse_y ) - 90.0

var x_move = 0
var y_move = 0
if( keyboard_check( ord( "W" ) ) ) --y_move
if( keyboard_check( ord( "S" ) ) ) ++y_move
if( keyboard_check( ord( "A" ) ) ) --x_move
if( keyboard_check( ord( "D" ) ) ) ++x_move

x_vel += x_move * accel * dt
y_vel += y_move * accel * dt

x += x_vel
y += y_vel

x_vel *= decay
y_vel *= decay

var left = camera_get_view_x( cam )
var right = left + camera_get_view_width( cam )
var top = camera_get_view_y( cam )
var bot = top + camera_get_view_height( cam )

if( x - sprite_width / 2 < left + edge_buffer_x )
{
	// x_vel = 0.0
	x = left + edge_buffer_x + sprite_width / 2
}
if( x + sprite_width / 2 > right - edge_buffer_x )
{
	// x_vel = 0.0
	x = right - edge_buffer_x - sprite_width / 2
}
if( y - sprite_height / 2 < top + edge_buffer_y )
{
	// y_vel = 0.0
	y = top + edge_buffer_y + sprite_height / 2
}
if( y + sprite_height / 2 > bot - edge_buffer_y )
{
	// y_vel = 0.0
	y = bot - edge_buffer_y - sprite_height / 2
}

