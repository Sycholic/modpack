@echo off

setlocal EnableDelayedExpansion

if not exist export\ (
   mkdir export
)

for /d %%a in ([BWI]*) do (
    echo Exporting %%a to pbo
    cpbo.exe -y -p "%%a" export\%%a.pbo  > "logs\%%a_export.log" 2>&1
)

endlocal