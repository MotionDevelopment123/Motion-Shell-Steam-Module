@ECHO OFF
taskkill /f /im SDL.exe /T
taskkill /f /im steam.exe /T
CD C:\"Steam Deck Launcher"\Updater\Files
curl.exe -o Update.zip https://raw.githubusercontent.com/MotionDevelopment123/SDL/STABLE-VERSION/Update/Files/update.zip
curl.exe -o Update.bat https://raw.githubusercontent.com/MotionDevelopment123/SDL/STABLE-VERSION/Update/Files/update.bat
CALL Update.bat
@ECHO OFF