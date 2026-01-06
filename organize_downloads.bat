@echo off
setlocal EnableDelayedExpansion

REM === CAMBIA ESTA RUTA SI QUIERES ===
set "RUTA=%USERPROFILE%\Downloads"

cd /d "%RUTA%"

REM === CREAR CARPETAS SI NO EXISTEN ===
for %%F in (PDFs Imagenes Videos Musica Documentos Comprimidos Programas Otros) do (
    if not exist "%%F" mkdir "%%F"
)

REM === MOVER ARCHIVOS ===
move *.pdf PDFs >nul 2>&1
move *.jpg Imagenes >nul 2>&1
move *.jpeg Imagenes >nul 2>&1
move *.png Imagenes >nul 2>&1
move *.mp4 Videos >nul 2>&1
move *.mp3 Musica >nul 2>&1
move *.docx Documentos >nul 2>&1
move *.xlsx Documentos >nul 2>&1
move *.zip Comprimidos >nul 2>&1
move *.rar Comprimidos >nul 2>&1
move *.exe Programas >nul 2>&1

REM === TODO LO DEMÁS ===
for %%A in (.) do (
    if not "%%~xA"=="" move "%%A" Otros >nul 2>&1
)

echo Archivos organizados correctamente
timeout /t 2 >nul
exit