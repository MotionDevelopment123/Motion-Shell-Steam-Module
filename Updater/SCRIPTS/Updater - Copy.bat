@ECHO OFF
CD C:\"Steam Deck Launcher"\Updater
curl.exe -o LATEST.VERSION https://raw.githubusercontent.com/MotionDevelopment123/SDL/STABLE-VERSION/Update/LATEST.VERSION
set /p IVersion=<INSTALLED.VERSION
set /p LVERSION=<LATEST.VERSION
IF %IVersion%==%LVERSION% (goto END) else (goto Update) 

:Update
@ECHO Version: %LVERSION%
@ECHO Downloading update
@ECHO OFF
taskkill /f /im SDL.exe /T
taskkill /f /im steam.exe /T
CD C:\"Steam Deck Launcher"\Updater\Files
curl.exe -o Update.zip https://raw.githubusercontent.com/MotionDevelopment123/SDL/STABLE-VERSION/Update/Files/update.zip
curl.exe -o Update.bat https://raw.githubusercontent.com/MotionDevelopment123/SDL/STABLE-VERSION/Update/Files/update.bat
@ECHO Donwload complete, extracting files...
@ECHO OFF
tar -xf Update.zip --directory c:\"Steam Deck Launcher"\
CALL Update.bat
@ECHO Version %LVERSION% installed
@ECHO OFF
timeout /t 5
goto END

:END
@ECHO OFF
EXIT
