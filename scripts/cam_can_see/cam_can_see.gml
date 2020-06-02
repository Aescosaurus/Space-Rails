var cam = view_camera[0]
var cam_x = camera_get_view_x( cam )
var cam_y = camera_get_view_y( cam )
var cam_width = camera_get_view_width( cam )
var cam_height = camera_get_view_height( cam )

return( get_len_sq( cam_x + cam_width / 2 - x,cam_y + cam_height / 2 - y ) <
	sqr( cam_height ) + sqr( max( sprite_width,sprite_height ) ) )