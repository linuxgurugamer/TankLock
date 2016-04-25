mkdir R:\KSP_1.0.5_Dev\GameData\TankLock
mkdir R:\KSP_1.0.5_Dev\GameData\TankLock\Plugin



copy /Y "%~dp0bin\Debug\TankLock.dll" "R:\KSP_1.0.5_Dev\GameData\TankLock\Plugin"
copy /Y "%~dp0TankLock.version" "R:\KSP_1.0.5_Dev\GameData\TankLock"

copy /Y "%~dp0b..\License.txt" "R:\KSP_1.0.5_Dev\GameData\TankLock"
copy /Y "%~dp0..\..\README.md" "R:\KSP_1.0.5_Dev\GameData\TankLock"