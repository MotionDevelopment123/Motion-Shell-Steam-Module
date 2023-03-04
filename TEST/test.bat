type NUL > README.MD
curl -O https://raw.githubusercontent.com/MotionDevelopment123/SDL/STABLE-VERSION/README.md
SET /P versiongit=<README.md
ECHO %versiongit%
pause