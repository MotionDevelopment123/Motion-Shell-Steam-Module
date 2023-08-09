@ECHO ON
CD C:\"Steam Deck Launcher"\Update
curl.exe -o LATEST.VERSION https://raw.githubusercontent.com/MotionDevelopment123/SDL/STABLE-VERSION/Update/LATEST.VERSION
set /p IVersion=<INSTALLED.VERSION
set /p LVERSION=<LATEST.VERSION
IF %IVersion%==%LVERSION% (goto END) else (goto Update) 

:Update
START Update.VBS
taskkill /f /im SDL.exe /T
taskkill /f /im steam.exe /T
pause

:END
pause
EXIT