###### STABLE
# SDL (Steam Deck Launcher)
SDL can be used to replace the Windows Shell with the new big picture mode from Steam this provides a experance similar to what you would find using the Steam Deck.

### Features
- Launch directly into Steam's new big picture mode when signing into PC account
- Change what happens when you close Steam, default action is set to `Windows Shell`, can be used to logout by setting to `SHUTDOWN -L`. More information in the [FAQ](###FAQ).

### WARNING!
This will modify a registry key, when installing ensure your using a secondary profile (**NEVER USE THE ONLY PC PROFILE ALWAYS CREATE A SEPERATE ONE!**).

###FAQ
1. How to change what happens when I close Steam?
   >Go to `C:\Steam Deck Launcher\` and open `CLOSED.LOCATION` with a text editor such as Notepad (Included with windows) or [Notepad++](https://notepad-plus-plus.org/). To use other programs paste the full location to the `.EXE` file.

2. How to change where the program looks for Steam?
   >Go to `C:\Steam Deck Launcher\` and open `STEAM.LOCATION` with a text editor such as Notepad (Included with windows) or [Notepad++](https://notepad-plus-plus.org/) enter the full path to your `.EXE` using quotation marks`""` around any folders with spaces in the name.
