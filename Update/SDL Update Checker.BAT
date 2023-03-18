curl -O https://raw.githubusercontent.com/MotionDevelopment123/SDL/BETA-VERSION/Update/Latest-Version/LATEST.VERSION
SET /P LATEST=<LATEST.VERSION
SET /P CURRENT=<CURRENT.VERSION
ECHO LATEST:%LATEST%
ECHO CURRENT:%CURRENT%
if %LATEST% gtr %CURRENT% (goto 1) else (goto 2)

:1
ECHO There is a update
START https://github.com/MotionDevelopment123/SDL/releases/download/Stable-1.5.0.0/SDL-NONREG.exe
goto EOF

:2
ECHO You are on the latest version %LATEST%
goto EOF

:EOF
PAUSE
