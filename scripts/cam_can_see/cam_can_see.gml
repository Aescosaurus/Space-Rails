// var cam = view_camera[0]
// var cam_x = camera_get_view_x( cam )
// var cam_y = camera_get_view_y( cam )
// var cam_width = camera_get_view_width( cam )
// var cam_height = camera_get_view_height( cam )
// 
// return( abs( ( cam_x + cam_width / 2 ) - x ) - sprite_width / 2 < cam_width / 2 &&
// 	abs( ( cam_y + cam_height / 2 ) - y ) - sprite_height / 2 < cam_height / 2 )

return( cam_can_see_inst( x,y,sprite_width,sprite_height ) )