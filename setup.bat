@echo off
rem Crea el entorno virtual FUERA de OneDrive e instala las dependencias.
set "VENV=%LOCALAPPDATA%\TranslatorES\venv"
if not exist "%VENV%\Scripts\python.exe" python -m venv "%VENV%"
"%VENV%\Scripts\python.exe" -m pip install --upgrade pip
"%VENV%\Scripts\python.exe" -m pip install -r "%~dp0requirements.txt"
echo.
echo Listo. Abre la app con run.bat
pause
