event_inherited()
hp = 100

phase = 0
phase_0_dur = 3.5 * 60.0
phase_1_dur = 2.0 * 60.0
phase_2_dur = 10.0 * 60.0
phase_4_dur = 1.0 * 60.0

lasers[0] = noone
laser_offset = 38

rot_speed = 40.0

shotgun_refire = 0.5 * 60.0
cur_shot = 0
shot_count = 4
shot_speed = 0.85
shot_offset = 37

cur_rotation = 0
rotation_count = 4

move_pos = 0.0
x_start = x
x_move_speed = 30.0

alarm_set( 0,phase_0_dur )