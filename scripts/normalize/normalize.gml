var x_diff = argument0
var y_diff = argument1

var len = get_len( x_diff,y_diff )

var norm;
norm[0] = x_diff
norm[1] = y_diff

if( len != 0.0 )
{
	norm[0] /= len
	norm[1] /= len
}

return( norm )