@ECHO Steam Deck Launcher - Updater
@ECHO Checking for updates...
@ECHO OFF
CD C:\"Steam Deck Launcher"\Update
curl.exe -o LATEST.VERSION https://raw.githubusercontent.com/MotionDevelopment123/SDL/STABLE-VERSION/Update/LATEST.VERSION
set /p IVersion=<INSTALLED.VERSION
set /p LVERSION=<LATEST.VERSION
IF %IVersion%==%LVERSION% (goto END) else (goto Update) 

:Update
@ECHO Update found, downloading & Installing
START Update.VBS
taskkill /f /im SDL.exe /T
taskkill /f /im steam.exe /T
CD C:\"Steam Deck Launcher"\Update\Files
curl.exe -o Update.zip https://raw.githubusercontent.com/MotionDevelopment123/SDL/STABLE-VERSION/Update/Files/update.zip
tar -xf Update.zip --directory c:\"Steam Deck Launcher"\Update
START /WAIT Complete.VBS
CD C:\"Steam Deck Launcher"
START SDL.exe
goto END

:END
EXIT
