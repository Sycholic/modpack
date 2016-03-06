@echo off

setlocal EnableDelayedExpansion

if not exist logs\ (
   mkdir logs
)

for /d %%a in ([BWI]*) do (
   if "%%a" NEQ "[BWI]Template.vr" (
      echo Deploying changes to %%a
      robocopy "[BWI]Template.vr\BWI" "%%a\BWI" /E /XF nimitz_tp.sqf wasp_tp.sqf > "logs\%%a_copy.log"
	  copy "[BWI]Template.vr\onPlayerRespawn.sqf" "%%a" >> "logs\%%a_copy.log"
	  copy "[BWI]Template.vr\onPlayerKilled.sqf" "%%a" >> "logs\%%a_copy.log"
	  copy "[BWI]Template.vr\initPlayerLocal.sqf" "%%a" >> "logs\%%a_copy.log"
	  copy "[BWI]Template.vr\init.sqf" "%%a" >> "logs\%%a_copy.log"
   )
)

endlocal
