@echo off
setlocal

if not exist export\ (
   mkdir export
)

del export\BWI_Templates.rar
for /d %%a in ([BWI]*) do (
      echo Zipping %%a
	  rar.exe a -r -u export\BWI_Templates.rar %%a > logs\%%a_zip.log 
)

endlocal