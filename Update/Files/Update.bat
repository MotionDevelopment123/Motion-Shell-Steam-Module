@ECHO OFF
:Extract
CD C:\"Steam Deck Launcher"\Updater\Files
tar -xf Update.zip --directory c:\"Steam Deck Launcher"\
goto Update

:Update
CD C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs
md "Steam Deck Launcher"
CD C:\"Steam Deck Launcher"
copy "SDL Website.url" C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\"Steam Deck Launcher"
copy "GitHub Wiki.url" C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\"Steam Deck Launcher"
copy "SDL - GitHub.url" C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\"Steam Deck Launcher"
CD C:\"Steam Deck Launcher"
del /Q Github.url
goto EOF

:EOF
CD C:\"Steam Deck Launcher"\Updater\SCRIPTS
Start Complete.VBS