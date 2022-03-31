////////////////////////////////////////////////////////////////////////////
--BARISTANER ANIMASYON SISTEMI LUTFEN ADINI DEĞİŞTİRMEYİNİZ EKLENTİ ÜCRETSİZDİR
////////////////////////////////////////////////////////////////////////////
local function anim_ekran()
////////////////////////////////////////////////////////////////////////////
local ply = LocalPlayer()
local w = ScrW()  
local h = ScrH()  
////////////////////////////////////////////////////////////////////////////
if (IsValid(LocalPlayer())) then
if ply:GetActiveWeapon( ):GetClass( ) == "weapon_hpwr_stick" then
if ply:GetNWBool("ekran_acik",true) then 
ply:SetNWBool( "ekran_acik",false )
////////////////////////////////////////////////////////////////////////////
local animekran = vgui.Create( "DFrame" )
animekran:SetPos( 100, 100 )
animekran:SetSize( w * 0.20, h * 0.40 )
animekran:SetTitle( " " )
animekran:ShowCloseButton( false )
animekran:SetDraggable( false )
animekran:MakePopup()
animekran:Center()
////////////////////////////////////////////////////////////////////////////
local kaydir = vgui.Create( "DScrollPanel", animekran )
kaydir:Dock( FILL )
////////////////////////////////////////////////////////////////////////////
for i=1, 4 do
   local butontikla = kaydir:Add( "DButton" )
   butontikla:Dock( TOP )
   butontikla:SetColor(Color(255,255,255,255))  
   butontikla:DockMargin( 0, 0, 0, 5 )
   butontikla:SetSize(w * 0.10,h * 0.05)
////////////////////////////////////////////////////////////////////////////   
if i == 1 then
   butontikla:SetText( "Klasik" )
   butontikla.DoClick = function()
   net.Start("asa_animasyon")
   net.WriteFloat(i)
   net.SendToServer()  
   end 
end
////////////////////////////////////////////////////////////////////////////
   if i == 2 then
   butontikla:SetText( "Ofansif" )
   butontikla.DoClick = function()
   net.Start("asa_animasyon")
   net.WriteFloat(i)
   net.SendToServer() 
   end 
end
////////////////////////////////////////////////////////////////////////////
   if i == 3 then
   butontikla:SetText( "Saldirgan" )
   butontikla.DoClick = function()
   net.Start("asa_animasyon")
   net.WriteFloat(i)
   net.SendToServer() 
   end 
end
////////////////////////////////////////////////////////////////////////////
   if i == 4 then
   butontikla:SetText( "Defansif" )
   butontikla.DoClick = function()
   net.Start("asa_animasyon")
   net.WriteFloat(i)
   net.SendToServer() 
   end 
end
////////////////////////////////////////////////////////////////////////////
butontikla.Paint = function(s,w,h )
   draw.RoundedBox( 0, 0, 0,w,h,Color(0,0,0,255))
   draw.RoundedBox( 0, 2, 2,w-4,h-4,Color(50,50,50,255))
end
end
////////////////////////////////////////////////////////////////////////////
local kapatma = vgui.Create( "DButton", animekran ) 
kapatma:SetText( "X" )              
kapatma:SetPos( w * 0.17, h * 0 )               
kapatma:SetSize( w * 0.030, h * 0.030 )  
kapatma:SetColor(Color(255, 255, 255))          
kapatma.DoClick = function()           
   animekran:Close()
end
////////////////////////////////////////////////////////////////////////////
kapatma.Paint = function(s,w,h )
   draw.RoundedBox( 0, 0, 0,w,h,Color(0,0,0,255))
   draw.RoundedBox( 0, 2, 2,w-4,h-4,Color(139,0,0,255))
end
////////////////////////////////////////////////////////////////////////////
function animekran:Paint( w, h )
    draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0,200 ) )
end

////////////////////////////////////////////////////////////////////////////
end
end
end
end

////////////////////////////////////////////////////////////////////////////
hook.Add("PlayerButtonDown","acalim",function( ply, button )
   if not IsFirstTimePredicted() then return end
    if ( button == KEY_R ) then
        anim_ekran()
        ply:SetNWBool( "ekran_acik",true )
    end
end)
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////
--BARISTANER ANIMASYON SISTEMI LUTFEN ADINI DEĞİŞTİRMEYİNİZ EKLENTİ ÜCRETSİZDİR
////////////////////////////////////////////////////////////////////////////