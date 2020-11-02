// keep object on screen within buffer range
var buffer = argument0

if( x < buffer ) x = buffer
if( x > room_width - buffer ) x = room_width - buffer
if( y < buffer ) y = buffer
if( y > room_height - buffer ) y = room_height - buffer