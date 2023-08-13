@ECHO OFF
CD C:\"Steam Deck Launcher"\Update
curl.exe -o LATEST.VERSION https://raw.githubusercontent.com/MotionDevelopment123/SDL/STABLE-VERSION/Update/LATEST.VERSION
set /p IVersion=<INSTALLED.VERSION
set /p LVERSION=<LATEST.VERSION
IF %IVersion%==%LVERSION% (goto END) else (goto Update) 

:Update
@ECHO Update found, downloading & Installing
@ECHO OFF
taskkill /f /im SDL.exe /T
taskkill /f /im steam.exe /T
CD C:\"Steam Deck Launcher"\Update\Files
curl.exe -o Update.zip https://raw.githubusercontent.com/MotionDevelopment123/SDL/STABLE-VERSION/Update/Files/update.zip
tar -xf Update.zip --directory c:\"Steam Deck Launcher"\Update
@ECHO Version %LVERSION% installed
@ECHO OFF
timeout /t 5
goto END

:END
EXIT
