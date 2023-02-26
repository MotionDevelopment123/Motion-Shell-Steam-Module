@ECHO OFF
cd C:\"Program Files"\SDL\
set /p STARTUP_APPS=<STARTUP_APPS.LOCATION
for %%i in (%STARTUP_APPS%\*) do start "" "%%~i"