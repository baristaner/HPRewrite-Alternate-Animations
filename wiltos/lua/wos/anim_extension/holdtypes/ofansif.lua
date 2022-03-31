


local DATA = {}
DATA.Name = "ofansif"
DATA.HoldType = "ofansif"
DATA.BaseHoldType = "grenade"
DATA.Translations = {} 

DATA.Translations[ ACT_LAND ] = {
	{ Sequence = "ryoku_a_s2_land", Weight = 1 },
}

DATA.Translations[ ACT_MP_STAND_IDLE ] = {
	{ Sequence = "wos_phalanx_r_idle", Weight = 1 },
}

DATA.Translations[ ACT_MP_ATTACK_STAND_PRIMARYFIRE ] = {
	{ Sequence = "ryoku_r_c1_t2", Weight = 1 },
	{ Sequence = "vanguard_r_right_t1", Weight = 1 },
	{ Sequence = "b_left_t2", Weight = 1 },
	{ Sequence = "vanguard_r_s1_t1", Weight = 1 },
	{ Sequence = "ryoku_r_c4_t3", Weight = 1 },
	{ Sequence = "vanguard_r_left_t2", Weight = 1 },
	{ Sequence = "pure_r_s1_t1", Weight = 1 },
}


DATA.Translations[ ACT_MP_RUN ] = {
	{ Sequence = "b_run", Weight = 1 },
}

DATA.Translations[ ACT_MP_WALK ] = {
	{ Sequence = "walk_grenade", Weight = 1 },
}

DATA.Translations[ ACT_MP_JUMP ] = {
	{ Sequence = "h_jump", Weight = 1 },
}


DATA.Translations[ ACT_MP_CROUCH_IDLE ] = {
	{ Sequence = "crouchidle_knife", Weight = 1 },
}


wOS.AnimExtension:RegisterHoldtype( DATA )
