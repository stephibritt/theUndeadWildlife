:loop
@echo off
set serverName=The Undead Wildlife
set serverLocation="D:\SteamLibrary\steamapps\common\DayZServer"
set serverPort=2302
set serverConfig=serverDZ.cfg
set serverCPU=2
title %serverName% batch
cd "%serverLocation%"
echo (%time%) %serverName% started.
start "DayZ Server" /min "DayZServer_x64.exe" -config=%serverConfig% -port=%serverPort% -profiles=profiles "-mod=@UW LS;@CF;@Basic Map;@VPPAdminTools;@Unlimited Stamina;@Autorun Mod;@Building Fortifications;@CJ187-SummerChernarus;@NatureOverhaul;@DinkyItems;@AmmunitionExpansion;@EDO_WEAPONS;@Code Lock;@MMG Base Storage;@Modular Vest System;@TerjePartyMod;@BuildEverywhere;@Care Packages V2;@BuilderItems;@Flying Birds!;@The Fallen;@WickedRV;@MMG - Mightys Military Gear;@MMG - Welliton Canvas Retexture;@MAD Animal Gear;@MAD Halloween Gear;@MAD Christmas Gear;@MAD Barrels;@MAD Flags;@MAD Tents;@Cookies food and drinks pack;@ArrakisPokiBalls;@CatchablePokemon;@Slot for SmershVest;@Slot for Ghillie;@MMG Country Camo Extension;@StreetLighting;@DanonesWeaponCamos;@MMG_Unum;@More-Grass-Bliss;@Paragon Storage;@GhillieFix" -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck
timeout 20
timeout 14400
taskkill /im DayZServer_x64.exe /F
::taskkill /im bec.exe /F
timeout 10
goto halt