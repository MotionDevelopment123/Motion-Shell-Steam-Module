@ECHO OFF
CD C:\"Steam Deck Launcher"\Updater
set /p Latest=<LATEST.VERSION
taskkill /f /im SDL.exe /T
taskkill /f /im steam.exe /T
CD C:\"Steam Deck Launcher"\Updater\Files
curl.exe -o Update.zip https://github.com/MotionDevelopment123/SDL/releases/download/%Latest%/Update.zip
curl.exe -o Update.bat https://raw.githubusercontent.com/MotionDevelopment123/SDL/STABLE-VERSION/Update/Files/Update.bat
CALL Update.bat
@ECHO OFF