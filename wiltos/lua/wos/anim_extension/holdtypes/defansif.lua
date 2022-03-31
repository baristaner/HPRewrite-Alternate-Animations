local DATA = {}
DATA.Name = "defansif"
DATA.HoldType = "defansif"
DATA.BaseHoldType = "normal"
DATA.Translations = {} 

DATA.Translations[ ACT_LAND ] = {
	{ Sequence = "ryoku_a_s2_land", Weight = 1 },
}

DATA.Translations[ ACT_MP_STAND_IDLE ] = {
	{ Sequence = "phalanx_h_idle", Weight = 1 },
}

DATA.Translations[ ACT_MP_ATTACK_STAND_PRIMARYFIRE ] = {
	{ Sequence = "vanguard_r_right_t3", 
	Weight = 1,
	Time = 0.5,
	Rate = nil
},

{ Sequence = "vanguard_r_s1_t2", 
	Weight = 1,
	Time = 0.6,
	Rate = nil 
},

{ Sequence = "vanguard_b_s2_t2", Weight = 1},
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