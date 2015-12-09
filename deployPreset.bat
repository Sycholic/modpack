@echo off

setlocal EnableDelayedExpansion

if not exist logs\ (
   mkdir logs
)

for /d %%a in ([BWI]*) do (
   if "%%a" NEQ "[BWI]Template.vr" (
      echo Deploying changes to %%a
      robocopy "[BWI]Template_v2.vr\BWI" "%%a\BWI" /E /XF carrier_tp.sqf > "logs\%%a_copy.log"
	  robocopy "[BWI]Template_v2.vr\VAS" "%%a\VAS" /E >> "logs\%%a_copy.log"
	  copy "[BWI]Template_v2.vr\onPlayerRespawn.sqf" "%%a" >> "logs\%%a_copy.log"
	  copy "[BWI]Template_v2.vr\init.sqf" "%%a" >> "logs\%%a_copy.log"
   )
)

endlocal