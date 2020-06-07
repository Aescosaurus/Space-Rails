event_inherited()

if( hp < 1 )
{
	var expl = instance_create_layer( x,y,"instances",boss_explode_obj )
	expl.sprite_index = sprite_index
	expl.image_angle = image_angle
	
	instance_destroy()
}