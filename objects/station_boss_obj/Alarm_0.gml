star1 = instance_create_layer( x,y,"instances",star_obj )
star2 = instance_create_layer( x,y,"instances",star_obj )

star1.type = 1
star1.target_x = -50
star1.target_y = -50

star2.type = -1
star2.target_x = 50
star2.target_y = -50