var bx = argument0
var by = argument1
var dir = argument2
var count = argument3
var spread = argument4
var spd = argument5

for( var i = -count / 2; i < count / 2; ++i )
{
	var bullet = bullet_single( bx,by,dir + spread * i )
	bullet.speed = spd
}