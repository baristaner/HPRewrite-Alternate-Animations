--=====================================================================
/*		My Custom Holdtype
			Created by baristaner( STEAM_0:1:61971864 )*/
local DATA = {}
DATA.Name = "saldirgan"
DATA.HoldType = "saldirgan"
DATA.BaseHoldType = "melee"
DATA.Translations = {} 

DATA.Translations[ ACT_MP_STAND_IDLE ] = {
	{ Sequence = "ryoku_idle_lower", Weight = 1 },
}

DATA.Translations[ ACT_MP_RUN ] = {
	{ Sequence = "b_run", Weight = 1 },
}

DATA.Translations[ ACT_MP_ATTACK_STAND_PRIMARYFIRE ] = {
	{ Sequence = "b_c3_t2", Weight = 1 },
	{ Sequence = "phalanx_b_s1_t3", Weight = 1 },
	{ Sequence = "phalanx_b_s4_t1", Weight = 1 },
	{ Sequence = "b_c2_t3", Weight = 1 },
}

wOS.AnimExtension:RegisterHoldtype( DATA )
--=====================================================================
