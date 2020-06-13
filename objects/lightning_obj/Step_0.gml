image_alpha -= alpha_decay * get_delta_time()

if( damage > 0.0 ) damage = image_alpha * damage_mult

if( image_alpha < 0.0 )
{
	instance_destroy()
}