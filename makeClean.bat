@echo off

setlocal EnableDelayedExpansion

if not exist logs\ (
   mkdir logs
)

for /d %%a in ([BWI]*) do (
   if "%%a" NEQ "[BWI]Template.vr" (
      echo Cleaning %%a
	  del /s /q "%%a\BWI\functions" > "logs\%%a_clean.log" 2>&1
	  del /s /q "%%a\BWI\loadouts" >> "logs\%%a_clean.log" 2>&1
	  del /s /q "%%a\BWI\gui" >> "logs\%%a_clean.log" 2>&1
	  del /s /q "%%a\BWI\scripts\WerthlesHeadless.sqf" >> "logs\%%a_clean.log" 2>&1
	  del /s /q "%%a\BWI\scripts\reinsertPlayerToFOB.sqf" >> "logs\%%a_clean.log" 2>&1
	  del /s /q "%%a\BWI\scripts\displayReinforcements.sqf" >> "logs\%%a_clean.log" 2>&1
	  del /s /q "%%a\BWI\cfgFunctions.hpp" >> "logs\%%a_clean.log" 2>&1
	  del /s /q "%%a\BWI\cfgRemoteExec.hpp" >> "logs\%%a_clean.log" 2>&1
	  
	  if "%%a" NEQ "[BWI]Bootcamp.Chernarus" (
		  del /q "%%a\onPlayerRespawn.sqf" >> "logs\%%a_copy.log" 2>&1
		  del /q "%%a\onPlayerKilled.sqf" >> "logs\%%a_copy.log" 2>&1
		  del /q "%%a\initPlayerLocal.sqf" >> "logs\%%a_copy.log" 2>&1
		  del /q "%%a\initServer.sqf" >> "logs\%%a_copy.log" 2>&1
		  del /q "%%a\init.sqf" >> "logs\%%a_copy.log" 2>&1
	  )
   )
)

endlocal
