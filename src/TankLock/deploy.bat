
set H=R:\KSP_1.3.1_dev
echo %H%

set d=%H%
if exist %d% goto one
mkdir %d%
:one
set d=%H%\Gamedata
if exist %d% goto two
mkdir %d%
:two
set d=%H%\Gamedata\TankLock
if exist %d% goto three
mkdir %d%
:three
set d=%H%\Gamedata\TankLock\Plugin
if exist %d% goto four
mkdir %d%
:four


copy /Y "%~dp0bin\Debug\TankLock.dll" "%H%\GameData\TankLock\Plugin"
copy /Y "%~dp0TankLock.version" "%H%\GameData\TankLock"
copy /Y "%~dp0TankLock.cfg" "%H%\GameData\TankLock"

copy /Y "%~dp0b..\License.txt" "%H%\GameData\TankLock"
copy /Y "%~dp0..\..\README.md" "%H%\GameData\TankLock"