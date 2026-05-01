@echo off
title Mini Recon Tool
echo Starting recon...

:: Output file
set outfile=recon_results.txt

echo ============================= > %outfile%
echo      MINI RECON RESULTS      >> %outfile%
echo ============================= >> %outfile%
echo. >> %outfile%

:: Who am I
echo [*] Current User >> %outfile%
whoami >> %outfile%
echo. >> %outfile%

:: System info
echo [*] System Information >> %outfile%
systeminfo >> %outfile%
echo. >> %outfile%

:: Network info
echo [*] Network Configuration >> %outfile%
ipconfig /all >> %outfile%
echo. >> %outfile%

:: Running processes
echo [*] Running Processes >> %outfile%
tasklist >> %outfile%
echo. >> %outfile%

:: Open ports
echo [*] Active Connections >> %outfile%
netstat -ano >> %outfile%
echo. >> %outfile%

:: Done
echo Recon complete! Results saved in %outfile%
pause