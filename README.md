###### STABLE
# SDL (Steam Deck Launcher)
SDL can be used to replace the Windows Shell with the new big picture mode from Steam this provides an experience similar to what can be found using the Steam Deck.

### Features
- Launch directly into Steam's new big picture mode when signing into PC account
- Change what happens when you close Steam, default action is set to `Windows Shell`, can also be used to logout by setting to `SHUTDOWN -L`. More information in the [FAQ](#FAQ).
- Auto Updater, More information in the [FAQ](#FAQ).

### WARNING!
This will modify a registry key, when installing ensure your using a secondary profile (**NEVER USE THE ONLY PC PROFILE ALWAYS CREATE A SEPERATE ONE!**).
More information in the [FAQ](#FAQ).

### FAQ
1. How to change what happens when I close Steam?
   >Go to `C:\Steam Deck Launcher\` and open `CLOSED.LOCATION` with a text editor such as Notepad (Included with windows) or [Notepad++](https://notepad-plus-plus.org/). To use other programs paste the full location to the `.EXE` file.
2. How to change where the program looks for Steam?
   >Go to `C:\Steam Deck Launcher\` and open `STEAM.LOCATION` with a text editor such as Notepad (Included with windows) or [Notepad++](https://notepad-plus-plus.org/) enter the full path to your `.EXE` using quotation marks`""` around any folders with spaces in the name.
3. Auto Updater
   >As the core of this program is just `.BAT` scripts, when Steam is closed a `.BAT` starts that will check for an update. When a update is found the BAT file will download a zip file with the changes that then get extracted to the install location. The `SDL.EXE` is only used to open the `.BAT` file invisible as the replacement Shell so does not require changing.
5. About modified Registry Key
   >The key that is modified is to set the Shell from `Windows Shell` to `SDL.EXE`. The reason I created the project and have not just used the `STEAM.EXE` is because if you close Steam your left without a shell such as if Steam was to crash.
