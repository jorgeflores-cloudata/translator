@echo off
set "VENV=%LOCALAPPDATA%\TranslatorES\venv"
if not exist "%VENV%\Scripts\pythonw.exe" call "%~dp0setup.bat"
start "" "%VENV%\Scripts\pythonw.exe" "%~dp0app\translator_app.py"
