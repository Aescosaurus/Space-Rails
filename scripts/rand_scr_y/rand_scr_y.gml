var buffer = argument0

var cam_y = camera_get_view_y( view_camera[0] )
var cam_height = camera_get_view_height( view_camera[0] )

return( cam_y + random_range( buffer,cam_height - buffer ) )