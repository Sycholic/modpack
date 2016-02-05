@echo off

setlocal EnableDelayedExpansion

if not exist logs\ (
   mkdir logs
)

for /d %%a in ([BWI]*) do (
   if "%%a" NEQ "[BWI]Template.vr" (
      echo Cleaning %%a
	  del /s /y /x "%%a\BWI\functions" > "logs\%%a_clean.log" 2>&1
	  del /s /y /x "%%a\BWI\loadouts" >> "logs\%%a_clean.log" 2>&1
	  del /s /y /x "%%a\BWI\gui" >> "logs\%%a_clean.log" 2>&1
	  del /s /y /x "%%a\BWI\scripts\WerthlesHeadless.sqf" >> "logs\%%a_clean.log" 2>&1
	  del /s /y /x "%%a\BWI\scripts\deployMedicalTent.sqf" >> "logs\%%a_clean.log" 2>&1
	  del /s /y /x "%%a\BWI\scripts\repackageMedicalTent.sqf" >> "logs\%%a_clean.log" 2>&1
	  del /s /y /x "%%a\BWI\cfgFunctions.hpp" >> "logs\%%a_clean.log" 2>&1
	  del /y /x "%%a\onPlayerRespawn.sqf" >> "logs\%%a_copy.log" 2>&1
	  del /y /x "%%a\initPlayerLocal.sqf" >> "logs\%%a_copy.log" 2>&1
	  del /y /x "%%a\init.sqf" >> "logs\%%a_copy.log" 2>&1
   )
)

endlocal