#GitSync-Windows
###Prerequirement:
- Git
- Github account
- Enabled git credential store and signed in (make some first commit and push)
###Add new folder:
- Init git at folder need to sync
- Create a new repository on Github
- Add remote as "origin"
- Commit first time and push to origin master
- Create a file named path.txt
    - File included several sync configuration and you should note down each configuration index.
    - Each configuration start and end without a space between text and $ sign. Space in path is allowed.
    - Each configuration is a list of folder with ; delimiter, end of each configuration is a $ sign. This help you can define multiple path to be sync in one configuration
    ```text
    C:\config1\path to\folder1;D:\config1\path to\folder2$
    ```
    - To add new configuration, append configuration in the following models:
    ```
    old configurations$new configuration 1$new configuration 2$
    ```
###Run
- Execute sync_{folder}.cmd and sync_All.bat to verify results
- Create a batch file like sync_{folder}.bat or .cmd with body:
```batch
.\sync <index of configuration>
i.e: to trigger 3rd configuration
.\sync 3
```
    - Right click into .bat file and send to Desktop for shortcut
- Run sync_{folder}.bat or call in cmd:
```batch
D:\project\GitSyncWin\sync 3
```
