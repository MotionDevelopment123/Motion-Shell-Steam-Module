@ECHO OFF
CD C:\"Steam Deck Launcher"\Updater
curl.exe -o LATEST.VERSION https://raw.githubusercontent.com/MotionDevelopment123/SDL/STABLE-VERSION/Update/LATEST.VERSION
set /p IVersion=<INSTALLED.VERSION
set /p LVERSION=<LATEST.VERSION
IF %IVersion%==%LVERSION% (goto END) else (goto Update) 

:Update
CD C:\"Steam Deck Launcher"\Updater\SCRIPTS
goto END

:END
EXIT
