var buffer = argument0

var cam_x = camera_get_view_x( view_camera[0] )
var cam_width = camera_get_view_width( view_camera[0] )

return( cam_x + random_range( buffer,cam_width - buffer ) )