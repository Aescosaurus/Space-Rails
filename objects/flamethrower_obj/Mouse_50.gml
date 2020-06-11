for( var i = 0; i < flame_power; ++i )
{
	var flame = bullet_spawn_at( flame_obj,image_angle + 90.0,bullet_speed,0.0,4.0 )
	flame.damage = bullet_damage
	flame.direction += random_range( -flame_dev,flame_dev )
	flame.sprite_index = particle_spr
	flame.image_angle = random_range( 0.0,360.0 )
}