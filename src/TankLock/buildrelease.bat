@echo off
set DEFHOMEDRIVE=d:
set DEFHOMEDIR=%DEFHOMEDRIVE%%HOMEPATH%
set HOMEDIR=
set HOMEDRIVE=%CD:~0,2%

set RELEASEDIR=d:\Users\jbb\release
set ZIP="c:\Program Files\7-zip\7z.exe"
echo Default homedir: %DEFHOMEDIR%

set /p HOMEDIR= "Enter Home directory, or <CR> for default: "

if "%HOMEDIR%" == "" (
set HOMEDIR=%DEFHOMEDIR%
)
echo %HOMEDIR%

SET _test=%HOMEDIR:~1,1%
if "%_test%" == ":" (
set HOMEDRIVE=%HOMEDIR:~0,2%
)


type TankLock.version
set /p VERSION= "Enter version: "


mkdir %HOMEDIR%\install\GameData\TankLock
mkdir %HOMEDIR%\install\GameData\TankLock\Plugin

del %HOMEDIR%\install\GameData\TankLock


copy /Y "%~dp0bin\Release\TankLock.dll" "%HOMEDIR%\install\GameData\TankLock"
copy /Y "TankLock.version" "%HOMEDIR%\install\GameData\TankLock"

copy /Y "%~dp0..\License.txt" "%HOMEDIR%\install\GameData\TankLock"
copy /Y "%~dp0..\..\README.md" "%HOMEDIR%\install\GameData\TankLock"

%HOMEDRIVE%
cd %HOMEDIR%\install

set FILE="%RELEASEDIR%\TankLock-%VERSION%.zip"
IF EXIST %FILE% del /F %FILE%
%ZIP% a -tzip %FILE% Gamedata\TankLock

