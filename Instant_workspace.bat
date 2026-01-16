@echo off
echo --------------------------
echo INSTANT WORKSPACE
echo --------------------------
echo.

REM --- OPEN MICROSOFT EDGE (YOUTUBE) ---
start msedge "https://www.youtube.com"

REM --- OPEN FOLDER ---
start "" "%USERPROFILE%\Documents\CarpetaEjemplo"

REM -- OPEN DAVINCI RESOLVE ---
start "" "C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe"

echo Workspace ready
pause
