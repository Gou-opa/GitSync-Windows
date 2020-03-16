Prerequirement:
- Git
- Github account
- Enabled git credential store and signed in (make some first commit and push)
Add new folder:
- Init git at folder need to sync
- Create a new repository on Github
- Add remote as "origin"
- Commit first time and push to origin master
- Create a batch file like sync_{folder}.cmd with body:
```batch
call ".\sync_dispatcher.bat" <your_new_shortcut_keyword>
```
- Open sync_dispatcher then edit:
    - At ####define path: declare new path
    ```batch
    set "<folder_short_name>=<Drive:\path\to\folder>"
    ```
    - At ####append all: add these words before " (close double quote)
    ```batch
    ;%<folder_short_name>%
    ```
    - At ####sync execute: create a new execution under the last if statement follow this format
    ```batch
    if "%1"=="<your_new_shortcut_keyword>" set "destination_folders=%<folder_short_name>%" && goto :do
    ```
    - Save file
- Run sync_{folder}.cmd and sync_All.bat to verify results