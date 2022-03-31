////////////////////////////////////////////////////////////////////////////
--OYUNCU BELİRLİ BİR CAN HASAR YEDİKTEN SONRA BAYILMA ANIMAYONU UYGULAR
////////////////////////////////////////////////////////////////////////////
aktif = false -- KOD AKTIFMI DEĞİLMİ 
can = 50
vucutkismi = HITGROUP_GENERIC --  Generic Tüm Kısımları Almaktadır https://wiki.facepunch.com/gmod/Enums/HITGROUP
animasyon = ACT_HL2MP_ZOMBIE_SLUMP_RISE
dondur = true -- OYUNCUYA ANİMASYON UYGULANIRKEN DONDURULSUNMU NOT : EĞER OYUNCU DONUK ŞEKİLDE ÖLDÜRÜLÜRSE BUGA GİRER SUNUCUDAN ÇIKMASI GEREKİR
////////////////////////////////////////////////////////////////////////////
if aktif then
hook.Add("ScalePlayerDamage","hasar_animasyonu", function( ply, hitgroup, dmginfo )
if ply:Health() < can then
	if ( hitgroup == vucutkismi) then
	if dondur then
	ply:DoAnimationEvent(animasyon)
	ply:Freeze(true)

	timer.Simple(4,function()
		ply:Freeze(false)
	end)	
end
    end
end
end)
end
////////////////////////////////////////////////////////////////////////////
--OYUNCU BELİRLİ BİR CAN HASAR YEDİKTEN SONRA BAYILMA ANIMAYONU UYGULAR
////////////////////////////////////////////////////////////////////////////